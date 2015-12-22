.class Lcom/android/incallui/SecInCallActivity$18;
.super Ljava/lang/Object;
.source "SecInCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecInCallActivity;->onTtyNotification(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$18;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$18;->this$0:Lcom/android/incallui/SecInCallActivity;

    # getter for: Lcom/android/incallui/SecInCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/SecInCallActivity;->access$900(Lcom/android/incallui/SecInCallActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
