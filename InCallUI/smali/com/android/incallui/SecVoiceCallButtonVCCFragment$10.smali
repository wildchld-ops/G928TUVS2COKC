.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$10;
.super Ljava/lang/Object;
.source "SecVoiceCallButtonVCCFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showModifyErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$10;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$10;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1800(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
