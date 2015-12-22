.class Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;
.super Ljava/lang/Object;
.source "RoamingAutoDialOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->showRoamingAutoDialDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;->this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;->this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->finish()V

    return-void
.end method
