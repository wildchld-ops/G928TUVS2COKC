.class public Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
.super Ljava/lang/Object;
.source "XMLMessageFormatter.java"

# interfaces
.implements Lmf/org/apache/xerces/util/MessageFormatter;


# static fields
.field public static final XMLNS_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xml-names-19990114"

.field public static final XML_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1998/REC-xml-19980210"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    if-eq p1, v4, :cond_1

    const-string/jumbo v4, "mf.org.apache.xerces.impl.msg.XMLMessages"

    invoke-static {v4, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    :cond_1
    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v4, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz p3, :cond_2

    :try_start_1
    invoke-static {v2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    move-object v2, p2

    array-length v4, p3

    if-lez v4, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_1
    array-length v4, p3

    if-lt v1, v4, :cond_4

    :cond_3
    return-object v2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string v5, "FormatFailed"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v5, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string v5, "BadMessageKey"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/MissingResourceException;

    invoke-direct {v4, p2, v2, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_4
    if-lez v1, :cond_5

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    aget-object v4, p3, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
