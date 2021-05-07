import { GraphQLString, GraphQLID } from "graphql";
import { UserType } from "../TypeDefs/User";
import { MessageType } from "../TypeDefs/Messages";
import { Users } from '../../Entities/Users';

export const CREATE_USER = {
    type: MessageType,
    args: {
        name: { type: GraphQLString },
        username: { type: GraphQLString },
        password: { type: GraphQLString }
    },
    async resolve(parent: any, args: any){
        const { name, username, password } = args;
        const user = await Users.findOne({ username });
        if(user){
            throw new Error('USERNAME EXISTS');
        }else{
            await Users.insert({ name, username, password });//registra el nuevo usuario
            //console.log(name, username, password);
            return { successful: true, message: "NEW USERNAME" } 
        }
    },
}   

export const UPDATE_PASSWORD = {
    type: MessageType,
    args: {
        username: { type: GraphQLString },
        oldPassword: { type: GraphQLString },
        newPassword: { type: GraphQLString }
    },
    async resolve(parent: any, args: any){
        const {username, oldPassword, newPassword} = args;
        const user = await Users.findOne({ username: username });

        if(!user){
            throw new Error("USERNAME DOSN'T EXIST");
        }

        const userPassword = user?.password;
        if( oldPassword === userPassword ){
            await Users.update({username: username}, {password: newPassword});
            return { successful: true, message: "PASSWORD UPDATE SUCCESSFULLY" }
        }else{
            throw new Error("Password DO Not Match");
        }
    }
}

export const DELETE_USER = {
    type: MessageType,
    args: {
        id: { type: GraphQLID }
    },
    async resolve(parent: any, args: any){
        const id = args.id;
        await Users.delete({ id });
        return { successful: true, message: "DELETE SUCCESSFULLY" }
    }
}

export const SEARCH_USERNAME = {
    type: MessageType,
    args: {
        username: { type: GraphQLString }
    },
    async resolve(parent: any, args: any){
        const username = args.username;
        const user = await Users.findOne({ username });
        if(!user){
            return { successful: false, message: "USERNAME DON'T EXIST" }
        }else{
            return { successful: true, message: "USERNAME EXIST" }
        }
    }
}