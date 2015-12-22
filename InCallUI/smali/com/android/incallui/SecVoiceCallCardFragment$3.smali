.class Lcom/android/incallui/SecVoiceCallCardFragment$3;
.super Ljava/lang/Object;
.source "SecVoiceCallCardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$3;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment$3;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->access$100(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    return-void
.end method
