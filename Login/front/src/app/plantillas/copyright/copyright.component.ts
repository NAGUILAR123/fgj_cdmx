import { Component } from '@angular/core';
import { AppService } from '../../app.service';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-copyright',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './copyright.component.html',
  styleUrl: './copyright.component.scss'
})
export class CopyrightComponent {
  AppService: any = AppService;
}
