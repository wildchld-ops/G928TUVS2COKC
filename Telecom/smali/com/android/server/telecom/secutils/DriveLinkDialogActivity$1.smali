.class Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;
.super Ljava/lang/Object;
.source "DriveLinkDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->finish()V

    return-void
.end method
