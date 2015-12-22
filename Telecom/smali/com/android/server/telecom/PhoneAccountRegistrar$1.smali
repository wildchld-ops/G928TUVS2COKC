.class final Lcom/android/server/telecom/PhoneAccountRegistrar$1;
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
        "Lcom/android/server/telecom/PhoneAccountRegistrar$State;",
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
.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/telecom/PhoneAccountRegistrar$State;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_account_registrar_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    invoke-direct {v1}, Lcom/android/server/telecom/PhoneAccountRegistrar$State;-><init>()V

    const-string v2, "version"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->versionNumber:I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_0
    :goto_1
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "default_outgoing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    iget v3, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->versionNumber:I

    invoke-virtual {v0, p1, v3, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sim_call_manager"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    iget v3, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->versionNumber:I

    invoke-virtual {v0, p1, v3, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    iget-object v0, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v3, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v0, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "accounts"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_4
    :goto_2
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    iget v4, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->versionNumber:I

    invoke-virtual {v0, p1, v4, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    if-eqz v0, :cond_4

    iget-object v4, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v1

    :cond_6
    return-object v0
.end method

.method public bridge synthetic readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$1;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    move-result-object v0

    return-object v0
.end method

.method public writeToXml(Lcom/android/server/telecom/PhoneAccountRegistrar$State;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    const-string v0, "phone_account_registrar_state"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "version"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_0

    const-string v0, "default_outgoing"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    iget-object v1, p1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->writeToXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    const-string v0, "default_outgoing"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v0, p1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_1

    const-string v0, "sim_call_manager"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    iget-object v1, p1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->writeToXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    const-string v0, "sim_call_manager"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string v0, "accounts"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    sget-object v2, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->writeToXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v0, "accounts"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "phone_account_registrar_state"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    return-void
.end method

.method public bridge synthetic writeToXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/telecom/PhoneAccountRegistrar$1;->writeToXml(Lcom/android/server/telecom/PhoneAccountRegistrar$State;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    return-void
.end method
