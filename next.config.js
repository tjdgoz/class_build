/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  trailingSlash: true,
  generateBuildId: () => "codecamp-depoly-project",
  exportPathMap: () => {
    return {
      "/": { page: "/" },
      "/boards": { page: "/boards" },
      "/404": { page: "/404" },
      // "/boards/*"
    };
  },
};

module.exports = nextConfig;
