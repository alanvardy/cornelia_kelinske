describe('English site', function () {
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
    cy.contains('I am a highly professional language service provider')
  })

  it('Visits about me', function () {
    cy.visit('http://localhost:5000')
    cy.contains('About Me').click()
    cy.contains('I hold a German degree (equivalent to M.A.) in conference interpreting')
  })

  it('Visits overview', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Services').click()
    cy.contains('Overview').click()
    cy.contains('Prices depend on a number of different factors.')
  })

  it('Visits translation', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Services').click()
    cy.contains('Translation').click()
    cy.contains('As a professional translator, I always translate your text as a whole.')
  })

  it('Visits interpretation', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Services').click()
    cy.contains('Interpretation').click()
    cy.contains('In simple terms, interpretation is the oral translation of spoken words.')
  })

  it('Visits feedback', function () {
    cy.visit('http://localhost:5000')
    cy.contains('Feedback').click()
    cy.wait(500)
    cy.contains('Cornelia tailored a rather involved text')
  })

  it('Submits the contact form', function () {
    var message = 'Oh I wish I were an Oscar Meyer weiner'
    var from_email = 'that@iswhat.com'
    var name = 'I would really like to be'

    cy.visit('http://localhost:5000')
    cy.contains('Contact').click()
    cy.get('input#message_name').type(name)
    cy.get('input#message_from_email').type(from_email)
    cy.get('textarea#message_message').type(message)
    cy.get('[type=submit]').click()
    cy.contains('I have received your message')
  })
})
