.class Lcom/android/incallui/SecVoiceCallButtonFragment$10;
.super Ljava/lang/Object;
.source "SecVoiceCallButtonFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallButtonFragment;->showModifyErrorDialog()V
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

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$10;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->access$500(Lcom/android/incallui/SecVoiceCallButtonFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
