NAVBAR.JSX
// import React, { Component } from 'react'
// import { Link} from "react-router-dom";
// export default class Navbar extends Component {
//   render() {
//     return (
//       <div className=' sticky-top'>
//         <nav className=" navbar navbar-expand-lg bg-body-tertiary">
//             <div className="container-fluid">
//                 <a className="navbar-brand" href="#">NewsStop</a>
//                 <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
//                 <span className="navbar-toggler-icon"></span>
//                 </button>
//                 <div className="collapse navbar-collapse" id="navbarSupportedContent">
//                 <ul className="navbar-nav me-auto mb-2 mb-lg-0">
//               <li className="nav-item">
//                 <Link className="nav-link" to="/">Home</Link>
//               </li>
//               <li className="nav-item">
//                 <Link className="nav-link" to="/business">Business</Link>
//               </li>
//               <li className="nav-item">
//                 <Link className="nav-link" to="/sports">Sports</Link>
//               </li>
//               <li className="nav-item">
//                 <Link className="nav-link" to="/health">Health</Link>
//               </li>
//               <li className="nav-item">
//                 <Link className="nav-link" to="/entertainment">Entertainment</Link>
//               </li>
//               <li className="nav-item">
//                 <Link className="nav-link" to="/science">Science</Link>
//               </li>
//               <li className="nav-item">
//                 <Link className="nav-link" to="/technology">Technology</Link>
//               </li>
//               <li className="nav-item">
//                 <Link className="nav-link" to="/contact">Contact Us</Link>
//               </li>
//             </ul>
//                 {/* <form className="d-flex" role="search">
//                     <input className="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
//                     <button className="btn btn-outline-success" type="submit">Search</button>
//                 </form> */}
//                 </div>
//             </div>
//         </nav>
//       </div>
//     )
//   }
// }

NewsItem.JSX
// import React, { Component } from 'react'
// export default class NewsItem extends Component {
//   render() {
//     // we can destructuring of props by defining it here or directly via this.props.url
//     const {imageUrl,title,description, newsUrl , source , author, publishedAT}  = this.props 
//     return (
//       <div>
//         {/* {}is for js , {}is for making it an object */}
//         <div className="card" style={{"width":"18rem"}}> 
//             <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
//               {source && source.length>0?source :"X source"}
//               <span class="visually-hidden">unread messages</span>
//             </span>
//             <img src={imageUrl? imageUrl : "./assets/image.png"} className="card-img-top" alt="..."/>
//             <div className="card-body">
//                 <h5 className="card-title">{title.length>0? title :"Description not available"}...</h5>
//                 <p className="card-text">
//                   {description && description.length > 0 ? description  : "Description not available. Click the 'Read More' button to know more."}
//                 </p>
//                 <p className='fs-10 fw-lighter'>By {author && author.length>0 ? author : "Author unavailable"} on {publishedAT && publishedAT.length>0 ? publishedAT : "Date unavailable"} </p>
//                 <a target="_blank"  href={newsUrl} className="btn btn-primary">Read more</a>
//             </div>
//         </div>
//       </div>
//     )
//   }
// }

App.JSX
// import React, { Component } from 'react'
// import News from './News.jsx'
// import Navbar from './Navbar'
// import { BrowserRouter as Router , Routes , Route} from 'react-router-dom'
// export default class App extends Component {
//   render() {
//     return (
//       <Router>
//         <div>
//           <Navbar/>
//           <Routes>
//           <Route exact path="/" element={<News key="general" category="general" />} />
//             <Route exact path="/business" element={<News key="business" category="business" />} />
//             <Route exact path="/sports" element={<News key="sports" category="sports" />} />
//             <Route exact path="/technology" element={<News key="technology" category="technology" />} />
//             <Route exact path="/entertainment" element={<News key="entertainment" category="entertainment" />} />
//             <Route exact path="/health" element={<News key="health" category="health" />} />
//             <Route exact path="/science" element={<News key="science" category="science" />} />
//           </Routes>
//           {/* News category does not changes , as it is applied to when we mount , but when we have already mounted we apply key to force mount it again */}
//         </div>
//       </Router>
//     )
//   }
// }

Spinner.JSX
// import React, { Component } from 'react'
// import spin from './assets/spin.svg'
// export default class Spinner extends Component {
//   render() {
//     return (
//       <div className='d-flex justify-content-center'>
//         <img src={spin} alt="Loading..." />
//       </div>
//     )
//   }
// }

News.JSX
// import NewsItem from "./NewsItem"
// import React, { Component } from 'react'
// import Spinner from "./Spinner"
// import PropTypes from 'prop-types'
// import InfiniteScroll from "react-infinite-scroll-component"; //npm install --save react-infinite-scroll-component
// // import PropTypes from 'prop-types'

// // anything we fetch from the API is of the form of an object 
// export default class News extends Component {
//   // static defaultProps ={
//   //   category:'general', 
//   // }
//   // static PropTypes={
//   //   category: PropTypes.string
//   // }

//   articles =[
//     {
//       "source": { "id": null, "name": "ScienceAlert" },
//       "author": "Carly Cassella",
//       "title": "Intense Flu Surge Gripping The US Is The Worst in Years, CDC Says - ScienceAlert",
//       "description": "The US is dealing with an unusually intense influenza outbreak that has infected between 29 and 51 million people and hospitalized up to 820,000 since October.",
//       "url": "https://www.sciencealert.com/intense-flu-surge-gripping-the-us-is-the-worst-in-years-cdc-says",
//       "urlToImage": "https://www.sciencealert.com/images/2025/02/FluVaccinesUSA.jpg",
//       "publishedAt": "2025-02-17T06:05:31Z",
//       "content": "The US is dealing with an unusually intense influenza outbreak that has infected between 29 and 51 million people and hospitalized up to 820,000 since October.\r\nIt's one of the worst flu seasons in 1… [+4982 chars]"
//     },
//     {
//       "source": { "id": null, "name": "RACER" },
//       "author": "Kelly Crandall",
//       "title": "Preece offers a warning to NASCAR after another superspeedway flip - RACER",
//       "description": "Ryan Preece experienced another rollover on the Daytona backstretch Sunday night in the Daytona 500 and warned afterward that NASCAR is getting close to a driver not walking away. Preece was collec…",
//       "url": "https://racer.com/2025/02/16/preece-offers-a-warning-to-nascar-after-another-superspeedway-flip/",
//       "urlToImage": "https://racer.com/wp-content/uploads/sites/85/2025/02/GettyImages-2200085394.jpg?w=1024&h=576&crop=1",
//       "publishedAt": "2025-02-17T04:30:35Z",
//       "content": "Ryan Preece experienced another rollover on the Daytona backstretch Sunday night in the Daytona 500 and warned afterward that NASCAR is getting close to a driver not walking away.\r\nPreece was collect… [+2057 chars]"
//     },
//     {
//       "source": { "id": "the-hill", "name": "The Hill" },
//       "author": "Lauren Irwin",
//       "title": "New York Democrat blasts DOJ’s dismissal of Eric Adams case as ‘outright extortion’ - The Hill",
//       "description": "Rep. Dan Goldman (D-N.Y.) slammed the Department of Justice (DOJ) for dismissing the criminal case against New York Mayor Eric Adams, saying it’s “outright extortion.” Goldman joined MSNBC’s “Inside with Jen Psaki” on Sunday, where he weighed in on the mayor’…",
//       "url": "https://thehill.com/homenews/state-watch/5148719-new-york-democrat-blasts-dojs-dismissal-of-eric-adams-case-as-outright-extortion/",
//       "urlToImage": "https://thehill.com/wp-content/uploads/sites/2/2024/04/AP23335667627674-e1713269672719.jpg?w=1280",
//       "publishedAt": "2025-02-17T04:11:00Z",
//       "content": "Skip to content\r\nRep. Dan Goldman (D-N.Y.) slammed the Department of Justice (DOJ) for dismissing the criminal case against New York Mayor Eric Adams, saying it’s “outright extortion.”\r\nGoldman joine… [+1462 chars]"
//     },
//     {
//       "source": { "id": null, "name": "SciTechDaily" },
//       "author": null,
//       "title": "No More Needles: Stanford Scientists Create a Painless, Living Vaccine You Rub on Your Skin - SciTechDaily",
//       "description": "Stanford scientists discovered that a harmless skin bacterium triggers a powerful immune response. By tweaking a bacterial protein, they turned it into a living vaccine, training the immune system to fight diseases like tetanus and diphtheria. Mice given this…",
//       "url": "https://scitechdaily.com/?p=454653",
//       "urlToImage": "https://scitechdaily.com/images/Skin-Cream-Ointment.jpg",
//       "publishedAt": "2025-02-17T04:03:59Z",
//       "content": "Findings in mice by Stanford University scientists could translate into a radical, needle-free vaccination approach that would also eliminate reactions including fever, swelling, and pain.\r\nStanford … [+11225 chars]"
//     },
//     {
//       "source": { "id": null, "name": "Heat.com" },
//       "author": "Associated Press",
//       "title": "Fan beats Damian Lillard to win $100,000 in MrBeast Logo Shot Challenge - NBA.Com",
//       "description": "Jaren Barajas wins $100,000 after beating NBA legend Damian Lillard in a halfcourt shooting contest during the 2025 NBA All-Star Game.",
//       "url": "https://www.nba.com/news/college-student-beats-damian-lillard-in-all-star-shooting-contest",
//       "urlToImage": "https://cdn.nba.com/manage/2025/02/shaq-contest-winner.jpg",
//       "publishedAt": "2025-02-17T04:01:31Z",
//       "content": "NBA fan Jaren Barajas wins the MrBeast $100,000 Challenge at the buzzer, sinking a 3-pointer before Damian Lillard could hit 3.\r\n Get NBA League Pass TODAYNBA All-Star 2025: Complete coverage\r\nSAN FR… [+3457 chars]"
//     },
//     {
//       "source": { "id": null, "name": "CBS Sports" },
//       "author": "Sam Quinn",
//       "title": "2025 NBA All-Star Game scores: Live updates, format explained as Stephen Curry, Nikola Jokic, more share floor - CBS Sports",
//       "description": "Curry won MVP honors in San Francisco, but there was too much Kevin Hart and not enough basketball",
//       "url": "https://www.cbssports.com/nba/news/2025-nba-all-star-game-stephen-curry-leads-ogs-to-title-but-poor-presentation-overshadows-new-format/live/",
//       "urlToImage": "https://sportshub.cbsistatic.com/i/r/2025/02/17/e90ea28a-09a9-410b-b670-bca0b51b9485/thumbnail/1200x675/eac405f690735f35562f7cc2d4f2f933/curry-getty-6.png",
//       "publishedAt": "2025-02-17T03:50:44Z",
//       "content": "The NBA unveiled its new All-Star Game format on Sunday night in San Francisco, and the old stars emerged victorious from the four-team tournament. Shaq's OGs -- a team made up of Stephen Curry, Kevi… [+5510 chars]"
//     },
//     {
//       "source": { "id": null, "name": "BBC News" },
//       "author": null,
//       "title": "Can Europe conjure a united front on Ukraine's future? - BBC.com",
//       "description": "Europe's hastily convened security summit in Paris is proof of leaders' anxiety about their role in defending Ukraine, the BBC's Katya Adler writes.",
//       "url": "https://www.bbc.com/news/articles/c9qjq4z0xw8o",
//       "urlToImage": "https://ichef.bbci.co.uk/news/1024/branded_news/1d70/live/d43adf10-ecd2-11ef-9030-294a14d14932.jpg",
//       "publishedAt": "2025-02-17T02:53:38Z",
//       "content": "Katya Adler\r\nFrench President Emmanuel Macron will be hosting European leaders in Paris for urgent talks on Ukraine's future\r\nEurope's leaders are scrambling. Their hastily convened security summit i… [+7887 chars]"
//     },
//     {
//       "source": { "id": null, "name": "NBCSports.com" },
//       "author": "Rex Hoggard",
//       "title": "Ludvig Åberg sinks shorter version of Tiger Woods' iconic U.S. Open putt to win Genesis - Yahoo Sports",
//       "description": "Anyone who follows golf knows of Tiger Woods' putt to force a playoff at the 2008 U.S. Open. Ludvig Åberg made a putt on a similar line to win Tiger's event Sunday.",
//       "url": "https://www.nbcsports.com/golf/news/aberg-replicates-tigers-iconic-putt-to-win-genesis",
//       "urlToImage": "https://nbcsports.brightspotcdn.com/dims4/default/f44da3f/2147483647/strip/true/crop/5311x2987+0+554/resize/1440x810!/quality/90/?url=https%3A%2F%2Fnbc-sports-production-nbc-sports.s3.us-east-1.amazonaws.com%2Fbrightspot%2F13%2F3e%2F4d4f1edb49288b2561b8a40b8ab4%2Fhttps-delivery-gettyimages.com%2Fdownloads%2F2199430337",
//       "publishedAt": "2025-02-17T02:43:00Z",
//       "content": "SAN DIEGO Ludvig Åberg was 8 years old when Tiger Woods won the 2008 U.S. Open, which was not exactly the target audience 17 years ago, but the Swede has seen old (grainy) videos.\r\nI remember sort of… [+1323 chars]"
//     },
//     {
//       "source": { "id": null, "name": "New York Post" },
//       "author": "Lauren Sarner",
//       "title": "Aubrey Plaza makes first appearance since husband Jeff Baena’s death at ‘SNL 50’ special - New York Post ",
//       "description": "Aubrey Plaza, 40, made her first public appearance since her husband’s death at “Saturday Night Live’s” 50th anniversary special.",
//       "url": "https://nypost.com/2025/02/16/entertainment/aubrey-plaza-makes-first-appearance-since-husband-jeff-baenas-death-at-snl-50-special/",
//       "urlToImage": "https://nypost.com/wp-content/uploads/sites/2/2025/02/aubrey-plaza-snl-50-jeff-baena.jpg?quality=75&strip=all&w=1024",
//       "publishedAt": "2025-02-17T02:35:00Z",
//       "content": "Shes coming back for SNL.\r\nAubrey Plaza, 40, made her first public appearance since her husbands death at Saturday Night Lives 50th anniversary special on Sunday night. \r\nSaturday Night Live celebrat… [+4024 chars]"
//     },
//     {
//       "source": { "id": null, "name": "WTOP" },
//       "author": "Alan Etter",
//       "title": "‘Total shock’: Some federal employees dismissed just before ending probation - WTOP",
//       "description": "WTOP heard from several D.C.-area residents who lost their jobs just before completing their probationary periods and securing more job protections.",
//       "url": "https://wtop.com/local/2025/02/wtop-wants-to-hear-from-federal-employees-dismissed-by-doge/",
//       "urlToImage": "https://wtop.com/wp-content/uploads/2025/02/fed-worker-fired.jpg",
//       "publishedAt": "2025-02-17T01:18:56Z",
//       "content": "Are you a federal employee or contractor who has been impacted by the Trump administrations efforts to reduce the federal workforce? Send us a voice note through the WTOP News app, available on Apple… [+5023 chars]"
//     },
//     {
//       "source": { "id": null, "name": "Kstp.com" },
//       "author": "Emily Baude",
//       "title": "New York law enforcement: Minnesota man who was tortured, killed knew assailants - KSTP",
//       "description": "In a joint press release on Sunday from the Ontario County District Attorney and the New York State Police, authorities confirmed Nordquist and his assailants knew each other and identified as LGBTQ+. Officials added that one of the suspects lived with Nordqu…",
//       "url": "https://kstp.com/kstp-news/top-news/new-york-law-enforcement-minnesota-man-who-was-tortured-killed-knew-assailants/",
//       "urlToImage": "https://kstp.com/wp-content/uploads/2025/02/Sam-Nordquist-web.jpg",
//       "publishedAt": "2025-02-17T01:03:58Z",
//       "content": "A transgender Minnesota man who was found dead in a field in New York knew his assailants, New York State officials confirmed Sunday.\r\nLast week, law enforcement confirmed that the body of 24-year-ol… [+2798 chars]"
//     },
//     {
//       "source": { "id": null, "name": "New York Post" },
//       "author": "Ronny Reyes",
//       "title": "Texas measles cases swell to 48, marking state’s worst outbreak in three decades - New York Post ",
//       "description": "The Texas measles outbreak has doubled to 48 cases in just one week — the worst in nearly 30 years — and is heavily concentrated among children and teens in a “close-knit, undervaccinat…",
//       "url": "https://nypost.com/2025/02/16/us-news/texas-measles-outbreak-hits-48-cases-worst-in-three-decades/",
//       "urlToImage": "https://nypost.com/wp-content/uploads/sites/2/2025/02/view-back-child-suffering-exacerbation-98692187.jpg?quality=75&strip=all&w=1024",
//       "publishedAt": "2025-02-17T00:02:00Z",
//       "content": "The measles outbreak in Texas has doubled to 48 cases in just one week — marking the state’s greatest outbreak of the virus in nearly 30 years — after children and teens in a “close-knit, undervaccin… [+3327 chars]"
//     },
//     {
//       "source": { "id": "axios", "name": "Axios" },
//       "author": "Barak Ravid",
//       "title": "U.S.-Russia meeting on Ukraine war expected on Tuesday, sources say - Axios",
//       "description": "The talks are seen as a major step in improving  U.S.-Russia relations, but they're creating anxiety in Ukraine.",
//       "url": "https://www.axios.com/2025/02/16/us-russia-meeting-ukraine-war-expected-tuesday",
//       "urlToImage": "https://images.axios.com/sraDUTjz3oYkrMNuQYJDA5JHcqM=/0x124:4000x2374/1366x768/2025/02/16/1739745015715.jpg",
//       "publishedAt": "2025-02-16T22:44:50Z",
//       "content": "The meeting between senior U.S. and Russia officials to discuss a possible agreement on ending the war in Ukraine and prepare for a Trump-Putin summit will take place on Tuesday in Saudi Arabia, two … [+1664 chars]"
//     },
//     {
//       "source": { "id": null, "name": "Awardswatch.com" },
//       "author": null,
//       "title": "2025 BAFTA Film Awards: ‘Conclave’ Named Best Film, Ties with ‘The Brutalist’ for M... - AwardsWatch",
//       "description": "Edward Berger’s papal thriller Conclave was named Best Film at the 2025 BAFTA Film Awards today, one of four awards it collected that also included wins for editing and adapted screenplay. The film…",
//       "url": "https://awardswatch.com/2025-bafta-film-awards-conclave-named-best-film-ties-with-the-brutalist-for-most-wins/",
//       "urlToImage": "https://i0.wp.com/awardswatch.com/wp-content/uploads/2024/07/01_4230_C_TP_00015_R-scaled.jpg?fit=1200%2C499&ssl=1",
//       "publishedAt": "2025-02-16T22:18:45Z",
//       "content": "Edward Bergers papal thriller Conclave was named Best Film at the 2025 BAFTA Film Awards today, one of four awards it collected that also included wins for editing and adapted screenplay.\r\nThe film, … [+12691 chars]"
//     },
//     {
//       "source": { "id": "abc-news", "name": "ABC News" },
//       "author": "ABC News",
//       "title": "Trump post has critics saying he's declaring himself above the law - ABC News",
//       "description": null,
//       "url": "https://abcnews.go.com/Politics/trump-post-critics-declaring-law/story?id\\\\u003d118880089",
//       "urlToImage": null,
//       "publishedAt": "2025-02-16T22:11:20Z",
//       "content": null
//     },
//     {
//       "source": { "id": "associated-press", "name": "Associated Press" },
//       "author": "CHINEDU ASADU, PASCAL CINAMULA, JANVIER BARHAHIGA",
//       "title": "Rwanda-backed rebels occupy a 2nd major city in Congo’s mineral-rich east - The Associated Press",
//       "description": "Congo’s government says Rwanda-backed rebels have occupied a second major city in mineral-rich eastern Congo. The M23 rebels confirmed late Sunday that they were in the city to restore order after it was abandoned by Congolese forces. The rebels entered Bukav…",
//       "url": "https://apnews.com/article/congo-m23-rebels-bukavu-southkivu-14527185304baa9a5e40eff4cfccba85",
//       "urlToImage": "https://dims.apnews.com/dims4/default/355954b/2147483647/strip/true/crop/2156x1213+0+262/resize/1440x810!/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2Fc6%2Faa%2F11b46b6b81cbcc7e7f583a78a48f%2Fbc57a800b91c42819758abad2ce5ff5b",
//       "publishedAt": "2025-02-16T21:52:00Z",
//       "content": "BUKAVU, Congo (AP) Rwanda-backed rebels have occupied a second major city in mineral-rich eastern Congo, the government said Sunday, as M23 rebels confirmed they were in the city to restore order aft… [+4480 chars]"
//     },
//     {
//       "source": { "id": null, "name": "Abc45.com" },
//       "author": "DYLAN LOVAN | Associated Press",
//       "title": "Severe flooding in Kentucky claims nine lives, prompts federal disaster declaration - Turn to 10",
//       "description": "At least nine people have died in the most recent round of harsh weather to pummel the U.S., including eight people in Kentucky.",
//       "url": "https://abc45.com/news/nation-world/severe-flooding-in-kentucky-claims-nine-lives-prompts-federal-disaster-declaration-president-donald-trump-disaster-declaration-heavy-rain-falls-flooding-tennessee-flash-flood-warnings-national-weather-service",
//       "urlToImage": "https://turnto10.com/resources/media2/16x9/1536/986/0x80/90/b42dde50-fca5-4301-bdad-9da184c46ffb-AP25047053462993.jpg",
//       "publishedAt": "2025-02-16T21:14:58Z",
//       "content": "LOUISVILLE, Ky. (AP) At least nine people have died in the most recent round of harsh weather to pummel the U.S., including eight people in Kentucky who died as creeks swelled from heavy rain and wat… [+5607 chars]"
//     },
//     {
//       "source": { "id": null, "name": "PhoneArena" },
//       "author": "Abdullah Asim",
//       "title": "iPhone SE 4 likely to be rebranded, new name will reflect massive upgrades - PhoneArena",
//       "description": "The upcoming budget iPhone SE 4 is very likely being rebranded to reflect the new direction that Apple is taking with the phone.",
//       "url": "https://www.phonearena.com/news/iphone-se-4-rebranded-new-name-reflects-upgrades_id167649",
//       "urlToImage": "https://m-cdn.phonearena.com/images/article/167649-wide-two_1200/iPhone-SE-4-likely-to-be-rebranded-new-name-will-reflect-massive-upgrades.jpg",
//       "publishedAt": "2025-02-16T20:35:35Z",
//       "content": "A lot of Apple users are considering upgrading to the SE 4 instead of the iPhone 16. | Video credit Apple\r\nFor starters, and perhaps most importantly, the iPhone SE 4 is reported to feature the same … [+841 chars]"
//     }
//   ]

//  renderingFunction =async ()=>{
//     let url = `https://newsapi.org/v2/top-headlines?country=us&category=${this.props.category}&apiKey=0b3bb5eb924040e184c94f0b6c78d136&page=1&pageSize=10`
//     let data = await fetch(url)
//     let parsedData = await data.json()
//     this.setState({
//       articles: parsedData.articles,
//       totalArticles : parsedData.totalResults,
//       loading:false
//     })
//   }
//   constructor(){
//     super();  //without super this is undefined , as this is called from the component class of react
//     this.state={ //setting state in the constructor
//       articles: this.articles,
//       loading :true,
//       page:1,
//       totalArticles: 0,
//     }
//   }

//   // pageSize
//   componentDidMount(){
//     document.title=`${this.props.category} - NewsStop`
//     this.renderingFunction()
//   }

//   // handlePrevClick= ()=>{
//   //   this.setState({
//   //     page: this.state.page-1,
//   //   })
//   //   this.renderingFunction()
//   // }

//   // handleNextClick= ()=>{
//   //   this.setState({
//   //     page:this.state.page+1,
//   //   })
//   //   this.renderingFunction()
//   // }
//   fetchMoreData = async () => {
//     this.setState({ page: this.state.page + 1 });
//     let url = `https://newsapi.org/v2/top-headlines?country=us&category=${this.props.category}&apiKey=0b3bb5eb924040e184c94f0b6c78d136&page=${this.state.page}&pageSize=10`;
 
//     try {
//       let data = await fetch(url);
//       let parsedData = await data.json();
//       this.setState({
//         articles: this.state.articles.concat(parsedData.articles),
//         totalArticles: parsedData.totalResults,
//         loading: false,
//       });
//     } catch (error) {
//       console.error("Error fetching more data: ", error);
//     }
//   };

//   render() {
//     return (
//       <>
//         <div className="header text-center">
//           <h1>NEWS STOP</h1>
//           <h5>every news at one stop</h5>
//         </div>
        
//         {this.state.totalArticles >0 ? (

//           <div className="row d-flex justify-content-center">
//             {this.state.articles.map((e) => (
//               <div key={e.url} className="my-4 mx-3 col-md-3 d-flex justify-content-center">
//                 <NewsItem
//                   title={e.title}
//                   imageUrl={e.urlToImage}
//                   newsUrl={e.url}
//                   description={e.description}
//                   author={e.author}
//                   publishedAt={e.publishedAt}
//                   source={e.source.name}
//                 />
//               </div>
//             ))}
//              <InfiniteScroll
//               dataLength={this.state.articles.length}
//               next={this.fetchMoreData}
//               hasMore={this.state.articles.length<this.state.totalArticles}
//               loader={<Spinner/>}
//             ></InfiniteScroll>

//           </div>
          
//         ):"NO ARTICLE AVAILABLE"}

//         {/* <div className="d-flex my-3 mx-5 justify-content-between">
//           <button
//             disabled={this.state.page <= 1}
//             onClick={this.handlePrevClick}
//             className="btn btn-primary"
//           >
//             &larr; Previous
//           </button>
//           <button
//             disabled={this.state.page >= Math.ceil(this.state.totalArticles / 10)}
//             onClick={this.handleNextClick}
//             className="btn btn-primary"
//           >
//             Next &rarr;
//           </button>
//         </div> */}
//       </>
//     );
//   }
  
// }
// // when we fetch data , it is an asynchornous command and it needs await and async functions for that
// // we fetch entire data from the url , then use only what we need
