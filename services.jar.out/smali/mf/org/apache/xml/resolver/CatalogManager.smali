.class public Lmf/org/apache/xml/resolver/CatalogManager;
.super Ljava/lang/Object;
.source "CatalogManager.java"


# static fields
.field private static pAllowPI:Ljava/lang/String;

.field private static pClassname:Ljava/lang/String;

.field private static pFiles:Ljava/lang/String;

.field private static pIgnoreMissing:Ljava/lang/String;

.field private static pPrefer:Ljava/lang/String;

.field private static pStatic:Ljava/lang/String;

.field private static pVerbosity:Ljava/lang/String;

.field private static staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

.field private static staticManager:Lmf/org/apache/xml/resolver/CatalogManager;


# instance fields
.field private bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

.field private catalogClassName:Ljava/lang/String;

.field private catalogFiles:Ljava/lang/String;

.field public debug:Lmf/org/apache/xml/resolver/helpers/Debug;

.field private defaultCatalogFiles:Ljava/lang/String;

.field private defaultOasisXMLCatalogPI:Z

.field private defaultPreferPublic:Z

.field private defaultRelativeCatalogs:Z

.field private defaultUseStaticCatalog:Z

.field private defaultVerbosity:I

.field private fromPropertiesFile:Z

.field private ignoreMissingProperties:Z

.field private oasisXMLCatalogPI:Ljava/lang/Boolean;

.field private preferPublic:Ljava/lang/Boolean;

.field private propertyFile:Ljava/lang/String;

.field private propertyFileURI:Ljava/net/URL;

.field private relativeCatalogs:Ljava/lang/Boolean;

.field private resources:Ljava/util/ResourceBundle;

.field private useStaticCatalog:Ljava/lang/Boolean;

.field private verbosity:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "xml.catalog.files"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.verbosity"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pVerbosity:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.prefer"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pPrefer:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.staticCatalog"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pStatic:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.allowPI"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pAllowPI:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.className"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pClassname:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.ignoreMissing"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/CatalogManager;-><init>()V

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    const-string v0, "CatalogManager.properties"

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    const-string v0, "./xcatalog"

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    iput v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v0, Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/Debug;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    const-string v0, "CatalogManager.properties"

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    const-string v0, "./xcatalog"

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    iput v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/Debug;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticManager:Lmf/org/apache/xml/resolver/CatalogManager;

    return-object v0
.end method

.method private queryCatalogFiles()Ljava/lang/String;
    .locals 5

    sget-object v2, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    if-nez v0, :cond_1

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v3, "catalogs"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": catalogs not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryPreferPublic()Z
    .locals 4

    sget-object v2, Lmf/org/apache/xml/resolver/CatalogManager;->pPrefer:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v3, "prefer"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "public"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private queryRelativeCatalogs()Z
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v3, "relative-catalogs"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    goto :goto_0
.end method

.method private queryUseStaticCatalog()Z
    .locals 4

    sget-object v2, Lmf/org/apache/xml/resolver/CatalogManager;->pStatic:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v3, "static-catalog"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private queryVerbosity()I
    .locals 7

    iget v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lmf/org/apache/xml/resolver/CatalogManager;->pVerbosity:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v4, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v5, "verbosity"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    :goto_0
    iget v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    if-nez v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v4, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    :cond_2
    return v2

    :catch_0
    move-exception v1

    move-object v3, v0

    goto :goto_0

    :cond_3
    move-object v3, v0

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot parse verbosity: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized readProperties()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-class v5, Lmf/org/apache/xml/resolver/CatalogManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    const-class v5, Lmf/org/apache/xml/resolver/CatalogManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    iget-boolean v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v5, :cond_0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot find "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v5, Ljava/util/PropertyResourceBundle;

    invoke-direct {v5, v1}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_0

    :try_start_3
    iget-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v6, "verbosity"

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v5, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_4
    iget-boolean v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v5, :cond_2

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot read "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_2
    move-exception v0

    :try_start_5
    iget-boolean v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v5, :cond_2

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failure trying to read "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public allowOasisXMLCatalogPI()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result v0

    return v0
.end method

.method public catalogClassName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public catalogFiles()Ljava/util/Vector;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogFiles()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getAllowOasisXMLCatalogPI()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryAllowOasisXMLCatalogPI()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBootstrapResolver()Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    return-object v0
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 3

    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getPrivateCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    :cond_2
    return-object v0
.end method

.method public getCatalogClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryCatalogClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCatalogFiles()Ljava/util/Vector;
    .locals 8

    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    if-nez v6, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryCatalogFiles()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    :cond_0
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    const-string v7, ";"

    invoke-direct {v4, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    iget-boolean v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs()Z

    move-result v6

    if-nez v6, :cond_2

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    invoke-direct {v1, v6, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v0, v1

    :cond_2
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v0, v1

    goto :goto_2
.end method

.method public getIgnoreMissingProperties()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    return v0
.end method

.method public getPreferPublic()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryPreferPublic()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPrivateCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 10

    sget-object v1, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    :cond_0
    if-eqz v1, :cond_1

    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v2, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    move-object v1, v2

    :goto_0
    invoke-virtual {v1, p0}, Lmf/org/apache/xml/resolver/Catalog;->setCatalogManager(Lmf/org/apache/xml/resolver/CatalogManager;)V

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->setupReaders()V

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->loadSystemCatalogs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    sput-object v1, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    :cond_2
    return-object v1

    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmf/org/apache/xml/resolver/Catalog;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Catalog class named \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' could not be found. Using default."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    new-instance v2, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v4

    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Class named \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is not a Catalog. Using default."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    new-instance v2, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_0

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getRelativeCatalogs()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryRelativeCatalogs()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUseStaticCatalog()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryUseStaticCatalog()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getVerbosity()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryVerbosity()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ignoreMissingProperties(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/CatalogManager;->setIgnoreMissingProperties(Z)V

    return-void
.end method

.method public preferPublic()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getPreferPublic()Z

    move-result v0

    return v0
.end method

.method public queryAllowOasisXMLCatalogPI()Z
    .locals 4

    sget-object v2, Lmf/org/apache/xml/resolver/CatalogManager;->pAllowPI:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v3, "allow-oasis-xml-catalog-pi"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    goto :goto_0

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public queryCatalogClassName()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lmf/org/apache/xml/resolver/CatalogManager;->pClassname:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v3, :cond_2

    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v4, "catalog-class-name"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_0
.end method

.method public relativeCatalogs()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getRelativeCatalogs()Z

    move-result v0

    return v0
.end method

.method public setAllowOasisXMLCatalogPI(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    return-void
.end method

.method public setBootstrapResolver(Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    return-void
.end method

.method public setCatalogClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    return-void
.end method

.method public setCatalogFiles(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    return-void
.end method

.method public setIgnoreMissingProperties(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    return-void
.end method

.method public setPreferPublic(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    return-void
.end method

.method public setRelativeCatalogs(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    return-void
.end method

.method public setUseStaticCatalog(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    return-void
.end method

.method public setVerbosity(I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V

    return-void
.end method

.method public staticCatalog()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v0

    return v0
.end method

.method public verbosity()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getVerbosity()I

    move-result v0

    return v0
.end method
