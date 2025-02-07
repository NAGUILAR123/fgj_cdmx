import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms'; // Importa FormsModule

@Component({
  selector: 'app-formulario',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './formulario.component.html',
  styleUrl: './formulario.component.scss'
})
export class FormularioComponent {

}
