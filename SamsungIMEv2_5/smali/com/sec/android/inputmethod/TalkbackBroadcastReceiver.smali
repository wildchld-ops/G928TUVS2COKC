.class public Lcom/sec/android/inputmethod/TalkbackBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TalkbackBroadcastReceiver.java"


# instance fields
.field mInputManager:Lcom/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/TalkbackBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/TalkbackBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/TalkbackBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/TalkbackBroadcastReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/common/InputManager;->onTalkbackReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
