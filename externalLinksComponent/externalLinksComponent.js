/*
 * Created on Fri Mar 11 2022
 *
 * rsmibert@gmail.com
 */

import {LightningElement} from 'lwc';
import getUrlLinks        from '@salesforce/apex/ExternalLinksController.getUtilityBarLinks';

//import {NavigationMixin} from 'lightning/navigation';

export default class ExternalLinksComponent extends LightningElement
{
    linkList;

    connectedCallback()
    {
        getUrlLinks().then(
            result =>
            {
                this.linkList = result;
            }
        ).catch( error =>
   
    {
        console.error('Something bad happened, this is the error ::: ' + error);
    });
    }
}