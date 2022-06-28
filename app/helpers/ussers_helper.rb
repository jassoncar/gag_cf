module UssersHelper
    def is_number?(n)
        if n=~ /^\d+$/
            true
        else
            false
        end
    end 
end
#creamos un metodod de ayuda para saber q si algo de lo que enviamos es un numero
#el signo ? es para verdadero o falso
