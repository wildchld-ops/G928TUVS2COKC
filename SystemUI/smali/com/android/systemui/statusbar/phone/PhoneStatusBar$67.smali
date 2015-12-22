.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->multiUserButtonClickOnKeyguard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZZ)V

    return-void
.end method
