const express = require("express")
const app = express()

// /pet-listing
app.get("/pet-listing", (req, res) => {
    const model = {
        pageTitle: "Pets",
        components: [
            {
                type: "featuredImage",
                data: {
                    imageUrl: "http://images.unsplash.com/photo-1517331156700-3c241d2b4d83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1468&q=80"
                }
            },
            {
                "type": "carousel",
                "data": {
                    "imageUrls": [
                        "https://images.unsplash.com/photo-1589883661923-6476cb0ae9f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWd]fHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80",
                        "https://images.unsplash.com/photo-1596854407944-bf87f6fdd49e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWd]fHx8fGVufDB8Hx8&auto=format&fit=crop&w=1160&q=80",
                        "https://images.unsplash.com/photo-1529257414772-1960b7bea4eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWd]fHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                        "https://images.unsplash.com/photo-1491485880348-85d48a95312?1x11b=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWd]fHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                        "https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1392&q=80"
                    ]
                }
            }
        ]
    }
    res.json(model)
})

app.listen(3000, () => {
    console.log("Server is running...")
})
