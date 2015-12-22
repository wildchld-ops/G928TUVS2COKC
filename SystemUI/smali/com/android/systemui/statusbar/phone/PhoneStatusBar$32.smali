.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direction_lock_set"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUniversalLockBoolean:Z

    if-eq v4, v1, :cond_0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUniversalLockBoolean:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    :goto_2
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUniversalLockBoolean:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUniversalLockBoolean:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUniversalLockBoolean:Z

    goto :goto_2
.end method
