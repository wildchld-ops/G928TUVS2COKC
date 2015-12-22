.class public final Lcom/android/server/telecom/PhoneAccountRegistrar;
.super Ljava/lang/Object;
.source "PhoneAccountRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;,
        Lcom/android/server/telecom/PhoneAccountRegistrar$State;,
        Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;
    }
.end annotation


# static fields
.field public static final NO_ACCOUNT_SELECTED:Landroid/telecom/PhoneAccountHandle;

.field public static final sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final sPhoneAccountXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final sStateXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization",
            "<",
            "Lcom/android/server/telecom/PhoneAccountRegistrar$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserHandle:Landroid/os/UserHandle;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "null"

    const-string v3, "null"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NO_ACCOUNT_SELECTED"

    invoke-direct {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->NO_ACCOUNT_SELECTED:Landroid/telecom/PhoneAccountHandle;

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar$1;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$1;-><init>()V

    sput-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sStateXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar$2;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$2;-><init>()V

    sput-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar$3;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$3;-><init>()V

    sput-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sPhoneAccountHandleXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone-account-registrar-state.xml"

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$State;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iput-object p1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mCurrentUserHandle:Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->read()V

    return-void
.end method

.method private addOrReplacePhoneAccount(Landroid/telecom/PhoneAccount;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "addOrReplacePhoneAccount(%s -> %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v1, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->fireAccountsChanged()V

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private fireAccountsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;->onAccountsChanged(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireDefaultOutgoingChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;->onDefaultOutgoingChanged(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireSimCallManagerChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;->onSimCallManagerChanged(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getPhoneAccountHandles(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountHandles(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneAccountHandles(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0, p1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/telecom/PhoneAccountRegistrar;->resolveComponent(Landroid/telecom/PhoneAccountHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccount;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private isVisibleForUser(Landroid/telecom/PhoneAccount;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mCurrentUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_3

    const-string v0, "Current user is null; assuming true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mCurrentUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private isVisibleForUser(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccount;)Z

    move-result v0

    goto :goto_0
.end method

.method private read()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    iget-object v4, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/server/telecom/PhoneAccountRegistrar;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->versionNumber:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    move v0, v1

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v0

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "Missing UserHandle for %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {p0, v6, v7}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Closing InputStream"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4, v5}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_3
    :try_start_3
    const-string v4, "Reading state from XML file"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v4, v5}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$State;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v3, v2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "Closing InputStream"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v3, "Closing InputStream"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    iget-object v7, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-string v6, "User does not exist for %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {p0, v6, v7}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    if-nez v3, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    :cond_5
    :goto_5
    return-void

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_5
.end method

.method private static readFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcom/android/server/telecom/PhoneAccountRegistrar$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sStateXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    invoke-direct {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar$State;-><init>()V

    goto :goto_0
.end method

.method private resolveComponent(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telecom.ConnectionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private resolveComponent(Landroid/telecom/PhoneAccountHandle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->resolveComponent(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private write()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "utf-8"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v3, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/android/server/telecom/PhoneAccountRegistrar;->writeToXml(Lcom/android/server/telecom/PhoneAccountRegistrar$State;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Writing state to XML file"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static writeToXml(Lcom/android/server/telecom/PhoneAccountRegistrar$State;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->sStateXml:Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar$XmlSerialization;->writeToXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAccounts(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing phone account "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->fireAccountsChanged()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget v1, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->versionNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultOutgoing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_0

    const-string v0, "none"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simCallManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_1

    const-string v0, "none"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "phoneAccounts:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_3
    return-void
.end method

.method public getAllPhoneAccountHandles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccount;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAllPhoneAccounts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccount;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCallCapablePhoneAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountHandles(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountHandles(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionManagerPhoneAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountHandles(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 5

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telecom/PhoneAccount;->supportsUriScheme(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :pswitch_0
    move-object v0, v3

    goto :goto_0

    :pswitch_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0

    :pswitch_2
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultOutgoingPhoneAccount phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneAccountHandle(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccount;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccount;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/telecom/PhoneAccountRegistrar;->NO_ACCOUNT_SELECTED:Landroid/telecom/PhoneAccountHandle;

    iget-object v1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v1, v1, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v4, v4, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v4}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->resolveComponent(Landroid/telecom/PhoneAccountHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/telecom/PhoneAccountRegistrar;->resolveComponent(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    :cond_4
    const-string v0, "%s does not have a PhoneAccount; not using as default"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object v0, v3

    goto/16 :goto_0

    :cond_5
    const-string v0, "%s could not be resolved; not using as default"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const-string v0, "No default connection manager specified"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v2, v2, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v2}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->isVisibleForUser(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public phoneAccountHasPermission(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_CONNECTION_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Name not found %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {p0, v3, v0}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->phoneAccountHasPermission(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Phone account %s does not have BIND_CONNECTION_SERVICE permission."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "PhoneAccount connection service requires BIND_CONNECTION_SERVICE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->addOrReplacePhoneAccount(Landroid/telecom/PhoneAccount;)V

    return-void
.end method

.method public setCurrentUserHandle(Landroid/os/UserHandle;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "setCurrentUserHandle, userHandle = null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :cond_0
    const-string v0, "setCurrentUserHandle, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mCurrentUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public setSimCallManager(Landroid/telecom/PhoneAccountHandle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "setSimCallManager: Nonexistent call manager: %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "setSimCallManager: Not a call manager: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/server/telecom/PhoneAccountRegistrar;->NO_ACCOUNT_SELECTED:Landroid/telecom/PhoneAccountHandle;

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iput-object p1, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->simCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->fireSimCallManagerChanged()V

    goto :goto_0
.end method

.method public setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    :goto_0
    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->fireDefaultOutgoingChanged()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    const-string v0, "Trying to set nonexistent default outgoing %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Trying to set non-call-provider default outgoing %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iput-object p1, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->defaultOutgoing:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/PhoneAccountRegistrar;->mState:Lcom/android/server/telecom/PhoneAccountRegistrar$State;

    iget-object v0, v0, Lcom/android/server/telecom/PhoneAccountRegistrar$State;->accounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->write()V

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->fireAccountsChanged()V

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
