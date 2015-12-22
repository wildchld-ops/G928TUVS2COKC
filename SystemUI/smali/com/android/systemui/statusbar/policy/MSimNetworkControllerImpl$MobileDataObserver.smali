.class Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataEnabled:Z

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method
