describe('German site', function () {
  beforeEach(function () {
    // before each test, we can automatically preserve the
    // 'session_id' and 'remember_token' cookies. this means they
    // will not be cleared before the NEXT test starts.
    //
    // the name of your cookies will likely be different
    // this is just a simple example
    Cypress.Cookies.debug(true)
    Cypress.Cookies.preserveOnce('_elixirvictoria_key')
  })

  it('Visits the main page', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Deutsch').click()
    cy.contains('Sie benötigen professionelle Übersetzungen')
  })

  it('Visits Über mich', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Deutsch').click()
    cy.contains('Über mich').click()
    cy.contains('Ich bin Diplom-Dolmetscherin und Übersetzerin')
  })

  it('Visits Allgemeines', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Deutsch').click()
    cy.contains('Leistungen').click()
    cy.contains('Allgemeines').click()
    cy.contains('Wie viel für eine Übersetzung')
  })

  it('Visits Übersetzen', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Deutsch').click()
    cy.contains('Leistungen').click()
    cy.contains('Übersetzen').click()
    cy.contains('Als professionelle Übersetzerin betrachte')
  })

  it('Visits Dolmetschen', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Deutsch').click()
    cy.contains('Leistungen').click()
    cy.contains('Dolmetschen').click()
    cy.contains('Beim Konsekutivdolmetschen spricht der Dolmetscher')
  })

  it('Visits Feedback', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Deutsch').click()
    cy.contains('Feedback').click()
    cy.contains('Cornelia hat einen anspruchsvollen')
  })

  it('Submits the contact form', function () {
    var message = 'Oh I wish I were an Oscar Meyer weiner'
    var from_email = 'that@iswhat.com'
    var name = 'I would really like to be'

    cy.visit('http://localhost:5000')
    cy.contains('Deutsch').click()
    cy.contains('Kontakt').click()
    cy.get('input#message_name').type(name)
    cy.get('input#message_from_email').type(from_email)
    cy.get('textarea#message_message').type(message)
    cy.get('[type=submit]').click()
    cy.contains('Ich habe Ihre Nachricht erhalten und werde mich bald melden!')
  })
})
