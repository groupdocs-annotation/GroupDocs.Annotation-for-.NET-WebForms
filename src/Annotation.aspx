﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Annotation.aspx.cs" Inherits="GroupDocs.Annotation.WebForms.Annotation" %>

<%
    GroupDocs.Annotation.WebForms.Products.Common.Config.GlobalConfiguration config = new GroupDocs.Annotation.WebForms.Products.Common.Config.GlobalConfiguration();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Annotation for .NET Web Forms</title>
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/all.min.css">
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/v4-shims.min.css">
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/swiper.min.css">
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/jquery-ui.min.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/common/css/circle-progress.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/viewer/css/viewer.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/viewer/css/viewer.mobile.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/viewer/css/viewer-dark.css" />
    <link type="text/css" rel="stylesheet" href="/annotation/resources/annotation/css/annotation.css" />
    <script type="text/javascript" src="/annotation/resources/common/js/jquery.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/swiper.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/jquery.initialize.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/jquery.timeago.js"></script>
    <script type="text/javascript" src="/annotation/resources/common/js/es6-promise.auto.js"></script>
    <script type="text/javascript" src="/annotation/resources/viewer/js/viewer.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/svg.min.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/svg.draw.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/drawSvgAnnotation.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/drawTextAnnotation.js"></script>
    <script type="text/javascript" src="/annotation/resources/annotation/js/annotation.js"></script>
</head>
<body>
    <div id="element"></div>
    <script type="text/javascript">      
        $('#element').annotation({
            applicationPath: 'http://<%= config.Server.HostAddress%>:<%= config.Server.HttpPort%>/annotation',
            defaultDocument: '<%= config.Annotation.GetDefaultDocument()%>',
            preloadPageCount: <%= config.Annotation.GetPreloadPageCount()%>,
            pageSelector: <%= config.Common.isPageSelector.ToString().ToLowerInvariant()%>,
            download: <%= config.Common.isDownload.ToString().ToLowerInvariant()%>,
            upload: <%= config.Common.isUpload.ToString().ToLowerInvariant()%>,
            print: <%= config.Common.isPrint.ToString().ToLowerInvariant()%>,
            browse: <%= config.Common.isBrowse.ToString().ToLowerInvariant()%>,
            rewrite: <%= config.Common.isRewrite.ToString().ToLowerInvariant()%>,
            textAnnotation: <%= config.Annotation.GetIsTextAnnotation().ToString().ToLowerInvariant()%>,
            areaAnnotation: <%= config.Annotation.GetIsAreaAnnotation().ToString().ToLowerInvariant()%>,
            pointAnnotation: <%= config.Annotation.GetIsPointAnnotation().ToString().ToLowerInvariant()%>,
            textStrikeoutAnnotation: <%= config.Annotation.GetIsTextStrikeoutAnnotation().ToString().ToLowerInvariant()%>,
            polylineAnnotation: <%= config.Annotation.GetIsPolylineAnnotation().ToString().ToLowerInvariant()%>,
            textFieldAnnotation: <%= config.Annotation.GetIsTextFieldAnnotation().ToString().ToLowerInvariant()%>,
            watermarkAnnotation: <%= config.Annotation.GetIsWatermarkAnnotation().ToString().ToLowerInvariant()%>,
            textReplacementAnnotation: <%= config.Annotation.GetIsTextReplacementAnnotation().ToString().ToLowerInvariant()%>,
            arrowAnnotation: <%= config.Annotation.GetIsArrowAnnotation().ToString().ToLowerInvariant()%>,
            textRedactionAnnotation: <%= config.Annotation.GetIsTextRedactionAnnotation().ToString().ToLowerInvariant()%>,
            resourcesRedactionAnnotation: <%= config.Annotation.GetIsResourcesRedactionAnnotation().ToString().ToLowerInvariant()%>,
            textUnderlineAnnotation: <%= config.Annotation.GetIsTextUnderlineAnnotation().ToString().ToLowerInvariant()%>,
            distanceAnnotation: <%= config.Annotation.GetIsDistanceAnnotation().ToString().ToLowerInvariant()%>,
            downloadOriginal:  <%= config.Annotation.GetIsDownloadOriginal().ToString().ToLowerInvariant()%>,
            downloadAnnotated:  <%= config.Annotation.GetIsDownloadAnnotated().ToString().ToLowerInvariant()%>,
            enableRightClick: <%= config.Common.enableRightClick.ToString().ToLowerInvariant()%>,
            zoom: <%= config.Annotation.GetIsZoom().ToString().ToLowerInvariant()%>,
            fitWidth: <%= config.Annotation.GetIsFitWidth().ToString().ToLowerInvariant()%>
        });
    </script>
</body>
</html>

