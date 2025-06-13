# Personal Website Style Collection

This project contains six different website styles for your personal website, modeled after various popular personal websites. Each style is implemented with clean HTML and CSS that's easy to customize and update.

## Quick Start - View All Styles

**Simply double-click the `View_Website_Styles.bat` file** to launch the local web server and automatically open the style selection page in your browser.

This will:
1. Start a local web server on port 8080
2. Open your default browser to the style selection page
3. Allow you to browse all six website styles

When you're finished, close the browser tab and press Ctrl+C in the command window to stop the server.

## Styles Overview

1. **Saleh Hamadeh Style** - Clean, professional portfolio with minimal navigation
2. **Jeremy Jordan Style** - Academic/professional blog with clean typography
3. **Eugene Yan Style** - Minimalist blog with focus on technical content
4. **Lex Fridman Style** - Sleek personal branding with prominent navigation
5. **Sahil Dua Style** - Ultra-minimalist landing page focusing on personal branding
6. **Ricky Dang Style** - Blog-centric with featured posts, tags, and sidebar

## Manual Usage

Each style is completely independent and contained within its own folder. If you prefer to view styles directly:

1. Navigate to the specific style folder
2. Open `index.html` in your browser

## Structure

Each style folder contains:
- `index.html` - Main HTML file
- `styles.css` - Styling for the website

## Customizing Content

### Update Text Content

To update text content, simply edit the HTML files. Look for elements like:

```html
<h1>Sean Chiang</h1>
<p>Brief description...</p>
```

Replace with your own content.

### Update Images

To add your own profile and other images:
1. Add your images to the style's folder
2. Update the image references in the HTML:

```html
<img src="your-profile-image.jpg" alt="Your Name">
```

Or in CSS:

```css
.profile-image {
    background-image: url('your-profile-image.jpg');
}
```

### Add Additional Pages

To add more pages:
1. Duplicate the `index.html` file
2. Rename it to your desired page name (e.g., `projects.html`)
3. Update the content
4. Update the navigation links in all pages

## Style-Specific Customization

### Saleh Style
- Simple portfolio layout
- Easy to add more project sections
- Clean typography focus

### Jeremy Style
- Hero section for personal introduction
- Featured section for projects
- Categories section for areas of interest

### Eugene Style
- Academic focus
- Blog post listing format
- Areas of interest section

### Lex Style
- Personal branding focus
- Projects grid layout
- Interests section with bullet points

### Sahil Style
- Ultra-minimalist approach
- Social media focus
- Featured projects as simple list

### Ricky Style
- Blog-post format
- Sidebar with categories and tags
- More traditional blog layout

## Extending the Styles

Each style uses vanilla HTML and CSS, making it easy to extend:

1. Add JavaScript for interactivity
2. Connect to a CMS for content management
3. Add additional pages and sections as needed

## Mobile Responsiveness

All styles are responsive and will adapt to different screen sizes. The responsive behavior is handled in the CSS files through media queries.
