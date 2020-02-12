defmodule CorneliaKelinske.Feedback do
  @moduledoc "Contains feedback data for templates"
  def german do
    [
      %{
        text: "Cornelia hat einen anspruchsvollen Text besser als ich je erwartet hätte
                auf die Bedürfnisse der deutschen Leserschaft zugeschnitten. Das Endergebnis war akkurat
                und wurde pünktlich geliefert. Ich kann sie jedem wärmstens empfehlen, der bei seiner
                Übersetzung auf Takt und Intelligenz wert legt.",
        author: ["S.E.", "Privatkunde"]
      },
      %{
        text:
          "Seit drei Jahren übersetzt Cornelia Kelinske für IJM Deutschland. Jederzeit: zuverlässig, präzise und wortgewandt.
                Wir sind äußerst zufrieden.",
        author: [
          "Judith Kühl",
          "Assistenz des Vorstandsvorsitzenden / Administrative Coordinator"
        ],
        company: ["INTERNATIONAL JUSTICE MISSION", "DEUTSCHLAND e.V."],
        website: 'http://ijmde.org/'
      },
      %{
        text:
          "Mein Name ist Julia Glaremin, ich bin Geschäftsführende Gesellschafterin von Apollo Lingua. Wir sind eine in
                    Deutschland ansässige Übersetzungsagentur. Wir sind stolz darauf, sagen zu können, dass wir mit den besten
                    und zuverlässigsten Übersetzerinnen und Übersetzern der Branche zusammenarbeiten und Cornelia Kelinske
                    bringt all diese Qualitäten mit und noch viel mehr. Sie ist unglaublich talentiert, äußerst präzise und hat
                    eine hervorragende Arbeitsmoral und Einstellung. Ich habe ihre Fähigkeiten in den vergangenen Jahren für
                    zahlreiche Übersetzungsprojekte genutzt und sie ist eine der besten Übersetzerinnen, mit denen ich die Ehre
                    hatte, zusammenzuarbeiten. Für Deutsch-Englisch und Englisch-Deutsch-Projekte, für die Sie sie in Erwägung
                    ziehen, kann ich sie Ihnen nur empfehlen. Sie dürfen mit einer ausgezeichneten Übersetzung rechnen.",
        author: ["Julia Glaremin", "Geschäftsführende Gesellschafterin"],
        company: ["Apollo Lingua GbR"],
        website: 'https://www.apollo-lingua.de/'
      }
    ]
  end

  def english do
    [
      %{
        text:
          "Cornelia tailored a rather involved text to the needs of a German readership in ways I would never have guessed at.
                The finished product was neat and timely. I would warmly recommend her to anyone requiring tact and intelligence in
                their translation work.",
        author: ["S.E.", "(private client)"]
      },
      %{
        text:
          "Cornelia Kelinske has been translating for IJM Deutschland for three years. She is always reliable, precise and
                skilled with words. We are extremely satisfied.",
        author: ["Judith Kühl", "Administrative Coordinator"],
        company: ["INTERNATIONAL JUSTICE MISSION", "DEUTSCHLAND e.V."],
        website: "http://ijmde.org/"
      },
      %{
        text:
          "My name is Julia Glaremin, Managing Partner of Apollo Lingua. We are a Germany-based translation company. We pride
                ourselves on working with the best and most reliable translators in the industry and I am proud to say that Cornelia
                Kelinske fulfills all of these qualities and more. She is incredibly talented, very accurate and has a fantastic
                work-ethic and attitude. I have utilized her skills on numerous translation projects over the past couple of years and
                she is one of the best translators I ever had the privilege of working with. I am pleased to recommend her for any
                German/ English and English/ German project for which she may be under consideration. You can expect nothing but
                excellence from her.",
        author: ["Julia Glaremin", "Managing Partner"],
        company: ["Apollo Lingua GbR"],
        website: "http://www.apollo-lingua.com/"
      }
    ]
  end

  def index_german do
    [
      %{
        text: "Sie dürfen mit einer ausgezeichneten Übersetzung rechnen.",
        author: ["Julia Glaremin", "Geschäftsführende Gesellschafterin", "Apollo Lingua GbR"]
      }
    ]
  end

  def index_english do
    [
      %{
        text: "You can expect nothing but excellence from her.",
        author: ["Julia Glaremin", "Managing Partner"],
        company: ["Apollo Lingua GbR"],
        website: "http://www.apollo-lingua.com/index.html"
      }
    ]
  end
end
