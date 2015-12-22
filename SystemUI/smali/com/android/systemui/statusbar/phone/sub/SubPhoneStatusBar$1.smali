.class Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;
.super Ljava/lang/Object;
.source "SubPhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$002(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    const v2, -0xc000001

    and-int v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->notifyUiVisibilityChanged(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;I)V

    :cond_0
    return-void
.end method
