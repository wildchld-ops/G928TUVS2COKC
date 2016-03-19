.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreferenceTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->onProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

.field final synthetic val$current:I

.field final synthetic val$maximum:I


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;II)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iput p2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;->val$current:I

    iput p3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;->val$maximum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v4, v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "download-skcur"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "download-skmax"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "download-vocur"

    iget v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;->val$current:I

    mul-int/lit8 v5, v5, 0x64

    iget v6, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;->val$maximum:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-vomax"

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-skmax"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-skcur"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-state"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v4, v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v4, v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mVOLanguagePack:Lcom/myscript/atk/rmc/VOLanguagePack;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1000(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/myscript/atk/rmc/VOLanguagePack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/rmc/VOLanguagePack;->isDownloadInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7$1;->this$1:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;

    iget-object v4, v4, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$7;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    const/4 v5, 0x0

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->drawProgressBar(Z)V
    invoke-static {v4, v5}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1200(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method
