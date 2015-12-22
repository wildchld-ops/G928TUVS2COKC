.class Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$9;
.super Ljava/lang/Object;
.source "SecCallPlusVoiceCallButtonFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->showModifyErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$9;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$9;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$2100(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
