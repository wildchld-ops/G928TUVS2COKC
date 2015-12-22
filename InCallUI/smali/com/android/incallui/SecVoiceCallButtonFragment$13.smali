.class Lcom/android/incallui/SecVoiceCallButtonFragment$13;
.super Ljava/lang/Object;
.source "SecVoiceCallButtonFragment.java"

# interfaces
.implements Lcom/android/incallui/IMSCallStateChangeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallButtonFragment;->initVoWiFi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateEndCallButton(Z)V

    return-void
.end method
