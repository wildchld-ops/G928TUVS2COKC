.class final Lcom/android/server/telecom/PhoneAccountRegistrar$3;
.super Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;
.source "PhoneAccountRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/PhoneAccountRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization",
        "<",
        "Landroid/telecom/PhoneAccountHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Landroid/telecom/PhoneAccountHandle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "phone_account_handle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    invoke-static {p3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "component_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user_serial_number"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_4
    :goto_1
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v3, v2, v1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object v1, v0

    :cond_5
    return-object v1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse UserHandle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v0, v5}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$3;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public writeToXml(Landroid/telecom/PhoneAccountHandle;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const-string v0, "phone_account_handle"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "component_name"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$3;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$3;->writeTextIfNonNull(Ljava/lang/String;Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "user_serial_number"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$3;->writeLong(Ljava/lang/String;JLorg/xmlpull/v1/XmlSerializer;)V

    :cond_1
    const-string v0, "phone_account_handle"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    return-void
.end method

.method public bridge synthetic writeToXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$3;->writeToXml(Landroid/telecom/PhoneAccountHandle;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    return-void
.end method
