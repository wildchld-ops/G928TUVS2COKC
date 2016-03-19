.class Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->startDownloadThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;
    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$1300(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;
    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$1300(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->stopDownloadThread()V

    :cond_0
    return-void
.end method
