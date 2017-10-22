import { Injectable } from '@angular/core';
import { User } from './user';
import { Headers, Http } from '@angular/http';
import {Router} from '@angular/router';

import 'rxjs/add/operator/toPromise';

@Injectable()
export class UserService {
    private headers = new Headers({'Content-Type': 'application/json'});
    
    private user: User = new User();

    private registerUrl = '/api/user/register';

    constructor(private http: Http) { }

    getUser(): Promise<User> {
        return new Promise(resolve => {
       setTimeout(() => resolve(this.user), 100);
    });
    }

    register(email: string, password: string, username: string): Promise<User> {
            return new Promise(resolve => {
        this.http.post(this.registerUrl, {
            name: username,
            password: password,
            mail: email
        }, {
            headers: this.headers
          })
        .toPromise()
        .then(response => {
            let auser:User = response.json() as User;
            this.user.name = auser.name;
            resolve(this.user);
        })
        .catch(this.handleError);
        });
    }

      private handleError(error: any): Promise<any> {
        console.error('An error occurred', error); // for demo purposes only
        return Promise.reject(error.message || error);
      }
      
    
}
