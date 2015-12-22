.class Lcom/android/phone/operator/usa/AllowDataAccess$1;
.super Ljava/lang/Object;
.source "AllowDataAccess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AllowDataAccess;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AllowDataAccess;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AllowDataAccess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AllowDataAccess$1;->this$0:Lcom/android/phone/operator/usa/AllowDataAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AllowDataAccess$1;->this$0:Lcom/android/phone/operator/usa/AllowDataAccess;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/AllowDataAccess;->finish()V

    return-void
.end method
