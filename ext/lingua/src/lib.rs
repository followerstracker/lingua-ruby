use magnus::{define_module, function, prelude::*, Error};
use lingua::{Language, LanguageDetector, LanguageDetectorBuilder};
use std::iter::FromIterator;

fn detect_language(text: String) -> String {
    let languages = Language::all();
    let language_vec = Vec::from_iter(languages.into_iter());

    let detector: LanguageDetector = LanguageDetectorBuilder::from_languages(&language_vec).build();

    if let Some(detected_language) = detector.detect_language_of(&text) {
        detected_language.to_string()
    } else {
        "Unknown".to_string()
    }
}


#[magnus::init]
fn init() -> Result<(), Error> {
    let module = define_module("Lingua")?;
    module.define_singleton_method("detect_language", function!(detect_language, 1))?;
    Ok(())
}
