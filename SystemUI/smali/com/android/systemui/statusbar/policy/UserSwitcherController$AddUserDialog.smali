.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddUserDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d035d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->setTitle(I)V

    const v0, 0x7f0d035e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x1

    const v1, 0x104000a

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, -0x2

    if-ne p2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->dismiss()V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0352

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v7}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAvatarSize:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAvatarSize:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/systemui/BitmapHelper;->createCircularClip(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # invokes: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    goto :goto_0
.end method
