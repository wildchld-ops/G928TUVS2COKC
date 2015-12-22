.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Landroid/widget/LinearLayout;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# instance fields
.field private mDemoMode:Z

.field private final mIconSize:I

.field private final mStatusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setGravity(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v8, -0x1

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    if-ge v7, v1, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p3, :cond_2

    move v8, v7

    :cond_1
    if-nez p3, :cond_4

    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeViewAt(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    iput-object p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iput p3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v6, "Demo"

    move-object v1, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    new-instance v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1, v10, v10}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    invoke-virtual {v9, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v4, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v14, :cond_1

    const-string v14, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v14, :cond_2

    const-string v14, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v14, :cond_0

    const-string v14, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "volume"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    const-string v14, "vibrate"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const v6, 0x7f02059f

    :goto_1
    const-string v14, "volume"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const-string v14, "zen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v14, "important"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const v6, 0x7f0206fd

    :goto_2
    const-string v14, "zen"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    const-string v14, "bluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v14, "disconnected"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const v6, 0x7f02049d

    :goto_3
    const-string v14, "bluetooth"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    const-string v14, "location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v14, "show"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const v6, 0x7f02053e

    :goto_4
    const-string v14, "location"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    const-string v14, "alarm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v14, "show"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const v6, 0x7f020486

    :goto_5
    const-string v14, "alarm_clock"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    const-string v14, "sync"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v14, "show"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    const v6, 0x7f0206d5

    :goto_6
    const-string v14, "sync_active"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    const-string v14, "tty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    const-string v14, "show"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    const v6, 0x7f0206d7

    :goto_7
    const-string v14, "tty"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    const-string v14, "eri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v14, "show"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    const v6, 0x7f0205a0

    :goto_8
    const-string v14, "cdma_eri"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    const-string v14, "mute"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    const-string v14, "show"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    const v6, 0x1080076

    :goto_9
    const-string v14, "mute"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    const-string v14, "speakerphone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    const-string v14, "show"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    const v6, 0x1080087

    :goto_a
    const-string v14, "speakerphone"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    const-string v14, "cast"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v14, "show"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    const v6, 0x7f020488

    :goto_b
    const-string v14, "cast"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_d
    const-string v14, "hotspot"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v14, "show"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    const v6, 0x7f02053b

    :goto_c
    const-string v14, "hotspot"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_f
    const-string v14, "none"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const v6, 0x7f0206fe

    goto/16 :goto_2

    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_11
    const-string v14, "connected"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const v6, 0x7f02049e

    goto/16 :goto_3

    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_19
    const/4 v6, 0x0

    goto :goto_a

    :cond_1a
    const/4 v6, 0x0

    goto :goto_b

    :cond_1b
    const/4 v6, 0x0

    goto :goto_c
.end method
