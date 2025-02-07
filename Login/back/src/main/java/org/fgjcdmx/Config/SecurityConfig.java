package org.fgjcdmx.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.HttpStatusEntryPoint;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebSecurity
public class SecurityConfig implements WebMvcConfigurer {
    /**
     * Configuracion para seguridad basica
     * @param http
     * @return
     * @throws Exception
     * */
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http)throws Exception {
        http.cors().and().csrf().disable().authorizeHttpRequests(r -> r.antMatchers("/api/**").permitAll()
                .anyRequest().authenticated()).httpBasic();

        return http.build();
    }

    /**
     * Configuracion para manejar errores de autenticacion
     * @return
     */
    @Bean
    public AuthenticationEntryPoint authenticationEntryPoint() {
        return new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED);
    }
}
