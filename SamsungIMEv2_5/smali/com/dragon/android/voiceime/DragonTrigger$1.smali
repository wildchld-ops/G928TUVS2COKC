.class Lcom/dragon/android/voiceime/DragonTrigger$1;
.super Ljava/lang/Object;
.source "DragonTrigger.java"

# interfaces
.implements Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dragon/android/voiceime/DragonTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dragon/android/voiceime/DragonTrigger;


# direct methods
.method constructor <init>(Lcom/dragon/android/voiceime/DragonTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/DragonTrigger$1;->this$0:Lcom/dragon/android/voiceime/DragonTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeechKitCreate()V
    .locals 2

    # getter for: Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/dragon/android/voiceime/DragonTrigger;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "speechkit on create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSpeechKitRelease()V
    .locals 2

    # getter for: Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/dragon/android/voiceime/DragonTrigger;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "speechkit on release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger$1;->this$0:Lcom/dragon/android/voiceime/DragonTrigger;

    # getter for: Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;
    invoke-static {v0}, Lcom/dragon/android/voiceime/DragonTrigger;->access$100(Lcom/dragon/android/voiceime/DragonTrigger;)Lcom/dragon/android/voiceime/RecognizerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger$1;->this$0:Lcom/dragon/android/voiceime/DragonTrigger;

    # getter for: Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;
    invoke-static {v0}, Lcom/dragon/android/voiceime/DragonTrigger;->access$100(Lcom/dragon/android/voiceime/DragonTrigger;)Lcom/dragon/android/voiceime/RecognizerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dragon/android/voiceime/RecognizerWrapper;->destory(Z)V

    :cond_0
    return-void
.end method
