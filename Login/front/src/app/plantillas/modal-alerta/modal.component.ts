import { CommonModule } from '@angular/common';
import { Component, Input } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';

@Component({
  selector: 'app-modal',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './modal.component.html',
  styleUrl: './modal.component.scss'
})
export class ModalAlertaComponent {

  @Input() id!: string;
  @Input() titulo!: string;
  @Input() mensaje!: string;

  

   // Cerrar sesión
  private static accion: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  public static $accion: Observable<boolean> = ModalAlertaComponent.accion.asObservable();

  constructor() {}

  /**
   * Metodo para ejecutar una accion
   * @param accion ejecutar accion en true, si no, en false
   */
  public static setAccion(accion: boolean): void {
    ModalAlertaComponent.accion.next(accion);
  }

  /**
   * Metodo en lazado al boton para ejecutar el otro metodo estatico
   */
  accionar() {
    ModalAlertaComponent.setAccion(true);
  }
}
