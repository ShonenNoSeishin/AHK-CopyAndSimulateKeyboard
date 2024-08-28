#Requires AutoHotkey v2.0

; Définition du mapping AZERTY vers QWERTY
azertyToQwerty := Map(
    "!", "1", "@", "2", "#", "3", "$", "4", "%", "5", "^", "6", "&", "7", "*", "8", "(", "9", ")", "0",
    "+", "-", "_", ")", "}", "$", ":", "m", "|", "£", "?", "=", '"', "%"
)
letters := Map(
    "a","q", "q","a", "z","w", "w","z", "m",","
)

lettersMAJ := Map(
    "A","Q", "Q","A", "Z","W", "W","Z", "M","?"
)

; fonctionne pas : {[

; Hotkey pour Ctrl+Shift+V
^+v:: {
    ; Sauvegarde du contenu actuel du presse-papiers
    clipBackup := ClipboardAll()
    
    ; Copie le contenu du presse-papiers dans une variable
    A_Clipboard := A_Clipboard  ; Convertit en texte brut
    if !ClipWait(2)
    {
        MsgBox("Impossible de récupérer le contenu du presse-papiers.")
        return
    }

    texte := A_Clipboard

    ; Conversion du texte 
    qwertyText := ""
    Loop Parse, texte
    {
        char := A_LoopField
        if char == ","
            qwertyText .= ";"
        ; TODO : FAIRE LES AUTRES CARACTERES MANQUANTS AVANT LE PROCHAIN ELSEIF 
        else if char == "~"
            qwertyText .= "]"   
        else if azertyToQwerty.Has(char) && char != "m" ;; && MAJ 
            qwertyText .= "{Shift down}" azertyToQwerty[char] "{Shift up}"
        else if letters.Has(char) && isLower(char)
            qwertyText .= letters[char]
        else if lettersMAJ.Has(char) && isUpper(char)
            qwertyText .= lettersMAJ[char]
        else
            qwertyText .= char
    }

    ; Envoi du texte converti
    SendInput(qwertyText)

    ; Restauration du contenu original du presse-papiers
    A_Clipboard := clipBackup
    return
}
