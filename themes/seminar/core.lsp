(#:define (nav-link url text)
 `(li (a ([href ,(string "/seminar/" url)]) ,text)))
(html
  (head
    (meta ([charset "utf-8"]))
    (link ([rel "stylesheet"]
           [href "//yegor256.github.io/tacit/tacit.min.css"]))
    (link ([rel "stylesheet"]
           [href "/seminar/css/custom.css"]))
    (title (#:var title)))
  (body
    (nav (ul (#:template nav-link "" "Math Seminar Home")
             (#:template nav-link "archive" "archive")
             (#:template nav-link "#upcoming_talks" "upcoming talks")
             (#:template nav-link "#feedback" "feedback")
             (#:template nav-link "faq" "faq")))
    (section
      (article
        (#:var page)))))