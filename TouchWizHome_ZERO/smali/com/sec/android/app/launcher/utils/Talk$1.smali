.class Lcom/sec/android/app/launcher/utils/Talk$1;
.super Ljava/lang/Object;
.source "Talk.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/utils/Talk;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/utils/Talk;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/utils/Talk;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/Talk$1;->this$0:Lcom/sec/android/app/launcher/utils/Talk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/Talk$1;->this$0:Lcom/sec/android/app/launcher/utils/Talk;

    # getter for: Lcom/sec/android/app/launcher/utils/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Talk;->access$000(Lcom/sec/android/app/launcher/utils/Talk;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/Talk$1;->this$0:Lcom/sec/android/app/launcher/utils/Talk;

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/Talk$1;->this$0:Lcom/sec/android/app/launcher/utils/Talk;

    # getter for: Lcom/sec/android/app/launcher/utils/Talk;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Talk;->access$100(Lcom/sec/android/app/launcher/utils/Talk;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    # invokes: Lcom/sec/android/app/launcher/utils/Talk;->setTextToSpeechLanguage(Ljava/util/Locale;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/utils/Talk;->access$200(Lcom/sec/android/app/launcher/utils/Talk;Ljava/util/Locale;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Talk"

    const-string v1, "Could not initialize TextToSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
