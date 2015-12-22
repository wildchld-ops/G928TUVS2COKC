.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$beforeFading:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->val$beforeFading:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->val$beforeFading:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->val$beforeFading:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    return-void
.end method
