import { Routes } from '@angular/router';

export const routes: Routes = [
    { path: '', redirectTo: 'listado', pathMatch: 'full' },

    // LOGIN (VERIFICACIÓN DE 2 PASOS)
    { path: 'login', children: [
        { path: '1', loadComponent: () => import('./login/components/credenciales/credenciales.component').then(c => c.CredencialesComponent) },
        { path: '2', loadComponent: () => import('./login/components/efirma/efirma.component').then(c => c.EfirmaComponent) },
    ]},

    // BIENVENIDA
    { path: 'bienvenida', loadComponent: () => import('./bienvenida/components/bienvenida/bienvenida.component').then(c => c.BienvenidaComponent) },

    //FORMULARIO 
    { path: 'formulario', loadComponent: () => import('./formulario/formulario.component').then(c => c.FormularioComponent )}
];
