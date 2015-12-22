.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;
.super Landroid/os/AsyncTask;
.source "KeyguardEffectViewBlind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "initBlindEffectByAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field light:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

.field wallpaper:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "unlockDelay"

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->getUnlockDelay()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "light"

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "background"

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->data:Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectDataObj;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/visualeffect/EffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    const-string v2, "BlindEffect"

    const-string v3, "KeyguardEffectViewBlind : doInBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 9

    const/16 v8, 0x63

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "BlindEffect"

    const-string v4, "KeyguardEffectViewBlind : onPostExecute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z
    invoke-static {v3, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z

    const-string v3, "BlindEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewBlind : isAsyncPostExecuted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "onConfigurationChanged"

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v3

    invoke-virtual {v3, v8, v1}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    const-string v3, "BlindEffect"

    const-string v4, "AsyncTask : onConfigurationChanged() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z
    invoke-static {v3, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "show"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v3

    invoke-virtual {v3, v8, v1}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    const-string v3, "BlindEffect"

    const-string v4, "AsyncTask : show() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z
    invoke-static {v3, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$902(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    const-string v3, "BlindEffect"

    const-string v4, "AsyncTask : cleanUp() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z
    invoke-static {v3, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "background"

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    const-string v3, "BlindEffect"

    const-string v4, "AsyncTask : update() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z
    invoke-static {v3, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "unlock"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    const-string v3, "BlindEffect"

    const-string v4, "AsyncTask : handleUnlock() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z
    invoke-static {v3, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "StartDelay"

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceDelay:J
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Rect"

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    const-string v3, "BlindEffect"

    const-string v4, "AsyncTask : showUnlockAffordance() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z
    invoke-static {v3, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$1302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z

    :cond_5
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewBlind : isAsyncPostExecuted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->keyguard_blind_light:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->light:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    new-instance v1, Lcom/samsung/android/visualeffect/EffectView;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Lcom/samsung/android/visualeffect/EffectView;)Lcom/samsung/android/visualeffect/EffectView;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    new-instance v1, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v1}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->data:Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Lcom/samsung/android/visualeffect/EffectDataObj;)Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
