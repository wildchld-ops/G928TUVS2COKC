.class Lcom/android/phone/operator/usa/OtaUtilsAlertDialog$2;
.super Ljava/lang/Object;
.source "OtaUtilsAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog$2;->this$0:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog$2;->this$0:Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/OtaUtilsAlertDialog;->dismiss()V

    return-void
.end method
