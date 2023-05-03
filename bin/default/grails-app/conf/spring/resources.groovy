import com.proyecto.jnet.UserPasswordEncoderListener
import com.proyecto.jnet.CustomUserDetailsService
// Place your Spring DSL code here
beans = {
    userPasswordEncoderListener(UserPasswordEncoderListener)
    userDetailsService(CustomUserDetailsService)
}
