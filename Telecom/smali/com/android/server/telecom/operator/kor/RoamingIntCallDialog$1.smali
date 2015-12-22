.class Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$1;
.super Ljava/lang/Object;
.source "RoamingIntCallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$1;->this$0:Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "RoamingIntCallDialog"

    const-string v1, "onClick: negative button"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog$1;->this$0:Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;->finish()V

    return-void
.end method
