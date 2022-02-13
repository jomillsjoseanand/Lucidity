# Lucidity

#### iOS application built using SwiftUI for amateur lucid dreamers to journal their dreams. 

## Interface
The application contains a simple interface where dreamers can log their dreams as soon as the wake up. It's interface requires simplicity for the sake of advanced dreaming techniques such as Wake-Initiated Lucid Dreaming (WILD), Wake Back To Bed (WBTB), Mnemonic Induction of Lucid Dreams (MILD), etc. where dreamers are not completely conscious but require to write down whatever they remember. 

A single page layout with previous dreams logged by date gives dreamers the best way to analyze patterns in their dreams which could help them attain lucidity. They could also make note of their reality checks and find what works best for them.

Dreamers can enter whatever they remember into the text box and log it to be stored instantaneously. In case of errors, they could delete logs by swiping left on the logged content. 

<img src="https://user-images.githubusercontent.com/44730936/153742257-67023acc-0646-460c-b2e8-d7ee345bd3f0.png" width="250"> &emsp; &emsp; &emsp; &emsp; <img src="https://user-images.githubusercontent.com/44730936/153742258-019ce3a0-ff1e-435c-a5dc-8ae8dd197b72.png" width="250">

## Development
The application uses SwiftUI for the ContentView and uses Core Data as well as SQLite to store dreams. The dreams are logged in the order of date which is taken at the time of dream entry. Multiple dreams can be logged for the same day if required. Vertical Stacks were used for dream log implementations and a functional button was used to save dream entry data which was written into the text box. 

The design and UI/UX will be further worked upon to make dream entry for partially conscious dreamers easier. Furthermore, aids for advanced lucid dreaming techniques will be incorporated into the application to provide an all-in-one seamless experience for aspiring lucid dreamers. Design elements including a logo, fonts, and colors patterns will be modified in upcoming builds.

Finally, the application will be built and transferred to an iPhone/iPad for testing and ultimately published into the Apple App Store. 
