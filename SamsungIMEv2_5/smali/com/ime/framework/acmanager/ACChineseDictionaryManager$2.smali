.class Lcom/ime/framework/acmanager/ACChineseDictionaryManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ACChineseDictionaryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->initACSDKManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;


# direct methods
.method constructor <init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$2;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$2;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    iget-object v0, v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLanguage:Lcom/nuance/swypeconnect/ac/ACLanguage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$2;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    iget-object v0, v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLanguage:Lcom/nuance/swypeconnect/ac/ACLanguage;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLocale(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method
