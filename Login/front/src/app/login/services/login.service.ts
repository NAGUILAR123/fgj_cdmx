import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { AppService } from '../../app.service';
import { BehaviorSubject, Observable } from 'rxjs';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { LSEntity } from '../../../models/Entitys/localStorage.model';

@Injectable({
  providedIn: 'root'
})
export class LoginService {


  // manejo de la sesion
  private sesion: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  public $sesion: Observable<boolean> = this.sesion.asObservable();
  get: any;

  constructor(private appService: AppService,
    private fb: FormBuilder,
  ) { }

  //------------------------------- MANEJO DE SESION -------------------------------
  /**
   * Activar o desactivar la sesion
   * @param ses sesion
   */
  public setSesion(ses: boolean): void {
    this.sesion.next(ses);
    LSEntity.almacenarLS('sesion', ses);
  }

  public getSesion(): boolean {
    return LSEntity.buscarElementoLS('sesion') === 'true';
  }

  // ------------------- OnInit -------------------
  /**
   * Inicializar formulario
   * @returns FormGroup
   */
  public formGroup(): FormGroup {
    return this.fb.group({
      username: ['', Validators.required],
      password: ['', Validators.required]
    })
  }
}
