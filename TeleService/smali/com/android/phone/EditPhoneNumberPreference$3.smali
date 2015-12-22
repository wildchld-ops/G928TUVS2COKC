.class Lcom/android/phone/EditPhoneNumberPreference$3;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPhoneNumberPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$3;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$3;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/EditPhoneNumberPreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/EditPhoneNumberPreference;->access$700(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
