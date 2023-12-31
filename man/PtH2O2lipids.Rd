\name{ptH2O2lipids}
\alias{PtH2O2lipids}
\alias{ptH2O2lipids}
\docType{data}
\title{
P. tricornutum HPLC-ESI-MS Lipid Data from van Creveld et al. (2015)
}
\description{
Positive ionization mode HPLC-ESI-MS lipid data from an experiment in which
cultures of the marine diatom \emph{Phaeodactylum tricornutum} were treated with
various concentrations of hydrogen peroxide (H2O2) to induce oxidative stress.
\code{ptH2O2lipids$LOBSet} was generated from \code{ptH2O2lipids$xsAnnotate}
using the \code{LOBSTAHS} function \code{\link{doLOBscreen}}.
}
\usage{data(ptH2O2lipids)}
\format{
  A list object containing the lipid data in two forms:
  \describe{
    \item{\code{ptH2O2lipids$LOBSet}}{A 1.2 MB object of formal class
    \code{"\link{LOBSet}"} containing screened peak data to which compound
    assignments and isomer identifications have been made. The structure of
    \code{ptH2O2lipids$LOBSet} is: \preformatted{
Formal class 'LOBSet' [package "LOBSTAHS"] with 9 slots
  ..@ peakdata             :'data.frame':	2056 obs. of 54 variables
  ..@ iso_C3r              :List of 2056
  ..@ iso_C3f              :List of 2056
  ..@ iso_C3c              :List of 2056
  ..@ LOBscreen_diagnostics:'data.frame':	6 obs. of  4 variables:
  ..@ LOBisoID_diagnostics :'data.frame':	3 obs. of  2 variables:
  ..@ LOBscreen_settings   :List of 6
  .. ..$ database     : chr "default"
  .. ..$ remove.iso   : logi TRUE
  .. ..$ rt.restrict  : logi TRUE
  .. ..$ rt.windows   : chr "default"
  .. ..$ exclude.oddFA: logi TRUE
  .. ..$ match.ppm    : num 2.5
  ..@ polarity             : Factor w/ 1 level "positive": 1
  ..@ sampnames            : chr [1:16] "0uM_24h_Orbi_0468" "0uM_24h_Orbi_0473" "0uM_4h_Orbi_0476" "0uM_8h_Orbi_0472" ...
  }}
  \item{\code{ptH2O2lipids$xsAnnotate}}{An 80 MB object of formal class
  \code{"\link{xsAnnotate}"} containing 18,314 peakgroups in 5,080
  pseudospectra. This is the object from which \code{ptH2O2lipids$LOBSet} was
  created using \code{\link{doLOBscreen}}. It includes annotation of possible
  isotope peaks from \code{\link[CAMERA]{findIsotopes}}. The \code{xcmsSet}
  from which the xsAnnotate object was created (64.5 MB) can be accessed at
  \code{ptH2O2lipids$xsAnnotate@xcmsSet}.
  }
  }
  }
\details{
\code{ptH2O2lipids$LOBSet} includes compound identifications assigned from the
default \code{LOBSTAHS} positive mode database. \code{ptH2O2lipids$LOBSet} also
includes in the slots \code{iso_C3r}, \code{iso_C3f}, and \code{iso_C3c} the
various possible isomers identified for each compound. Note that all other slots
in the ptH2O2lipids object can be accessed using the accessor functions
described for the \code{"\link{LOBSet-class}"} object class.

The dataset contains peaks from 16 samples that span three H2O2 treatments (0,
30 and 150 \eqn{\mu}M) and three timepoints (+4, +8, and +24 hours) in
duplicate. The dataset contains only one replicate sample for the 0 and 150
\eqn{\mu}M treatments at + 4h.

The mzXML files and Thermo .raw files from which these objects are derived can
be accessed at
\url{https://github.com/vanmooylipidomics/PtH2O2lipids/tree/master/mzXML} and
\url{http://www.whoi.edu/page.do?pid=133616&tid=282&cid=192529}, respectively.

Users should note that the LOBSet in this package does not include any PUA
(polyunsaturated aldehyde) identifications.
}
\source{\url{http://www.nature.com/ismej/journal/v9/n2/full/ismej2014136a.html}
}
\references{
Collins, J.R., B.R. Edwards, H.F. Fredricks, and B.A.S. Van Mooy. 2016.
LOBSTAHS: An adduct-based lipidomics strategy for discovery and identification
of oxidative stress biomarkers. Analytical Chemistry.

Graff van Creveld, et al., 2015, \dQuote{Early perturbation in mitochondria
redox homeostasis in response to environmental stress predicts cell fate in
diatoms}, \emph{ISME Journal} 9:385-395
}
\seealso{
  \code{\linkS4class{LOBSet-class}},
  \code{\link{LOBSet}},
  \code{\link{doLOBscreen}},
  \code{\link{getLOBpeaklist}},
  \code{\linkS4class{xcmsSet}},
  \code{\linkS4class{xsAnnotate}}
}
\examples{
\donttest{
## generate the object in ptH2O2lipids$LOBSet using ptH2O2lipids$xsAnnotate as
## input
library(PtH2O2lipids)

## yields output identical to ptH2O2lipids$LOBSet
myPtH202LOBSet = doLOBscreen(ptH2O2lipids$xsAnnotate, polarity = "positive",
database = NULL, remove.iso = TRUE, rt.restrict =  TRUE, rt.windows = NULL,
exclude.oddFA = TRUE, match.ppm = 2.5)
}

## access xsAnnotate object
ptH2O2lipids$xsAnnotate

## access xcmsSet
ptH2O2lipids$xsAnnotate@xcmsSet

}
\keyword{datasets}
