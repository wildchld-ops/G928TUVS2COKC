.class final Lcom/android/incallui/rcs/RcsShareUI$1;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/rcs/RcsShareUI;->setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$mnewcall:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/rcs/RcsShareUI$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/rcs/RcsShareUI$1;->val$mnewcall:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    # getter for: Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept Invite on Incall "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/rcs/RcsShareUI$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/rcs/RcsShareUI$1;->val$mnewcall:Lcom/android/incallui/Call;

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->acceptInvitation(Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->dismissIncomingInvitation()V

    return-void
.end method
