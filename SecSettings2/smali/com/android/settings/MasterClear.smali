.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# static fields
.field private static final mAppLabelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mNotTouched:Z

.field private mPinConfirmed:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/MasterClear$4;

    invoke-direct {v0}, Lcom/android/settings/MasterClear$4;-><init>()V

    sput-object v0, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/MasterClear$5;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$5;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClear;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runRestrictionsChallenge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/MasterClear;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/MasterClear;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/MasterClear;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private addDescriptionForRemovingPreloadApp()V
    .locals 37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f10027a

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f10027b

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v23, Ljava/io/FileInputStream;

    new-instance v34, Ljava/io/File;

    const-string v35, "/system/etc/removable_preload.txt"

    invoke-direct/range {v34 .. v35}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v34, Ljava/io/InputStreamReader;

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_5

    const-string v34, "name="

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_1

    const-string v34, "name=\'"

    const-string v35, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    const-string v35, "\'"

    const-string v36, ""

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v14

    move-object v8, v9

    move-object/from16 v22, v23

    :goto_1
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    if-eqz v22, :cond_3

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_3
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz v9, :cond_6

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    :goto_5
    if-eqz v23, :cond_7

    :try_start_7
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    move-object v8, v9

    move-object/from16 v22, v23

    goto :goto_3

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    move-object/from16 v22, v23

    goto :goto_3

    :catch_3
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v13

    :goto_6
    :try_start_8
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_8

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_8
    :goto_7
    if-eqz v22, :cond_3

    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    :catch_6
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_7
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v34

    :goto_8
    if-eqz v8, :cond_9

    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_9
    :goto_9
    if-eqz v22, :cond_a

    :try_start_c
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_a
    :goto_a
    throw v34

    :catch_8
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_9
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :cond_b
    const-string v34, "layout_inflater"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    :goto_b
    move/from16 v0, v18

    if-ge v0, v5, :cond_11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    :try_start_d
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_a

    move-result-object v30

    const/16 v20, 0x0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const v34, 0x7f040112

    const/16 v35, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v20, :cond_c

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0d0017

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v17

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_c
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const-string v35, "\\."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v24, 0x0

    move-object/from16 v7, v28

    array-length v0, v7

    move/from16 v25, v0

    const/16 v19, 0x0

    :goto_c
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    aget-object v27, v7, v19

    const-string v34, "sec"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_d

    const-string v34, "samsung"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    :cond_d
    const/16 v24, 0x1

    :cond_e
    if-eqz v24, :cond_10

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    :catch_a
    move-exception v13

    goto :goto_d

    :cond_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    :cond_10
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_11
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_12

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-eqz v34, :cond_4

    :cond_12
    sget-object v34, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    invoke-static/range {v33 .. v34}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v34, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v6, :cond_14

    const/16 v18, 0x0

    :goto_e
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_13

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    :cond_13
    const/16 v18, 0x0

    :goto_f
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_14

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_14
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :catchall_1
    move-exception v34

    move-object/from16 v22, v23

    goto/16 :goto_8

    :catchall_2
    move-exception v34

    move-object v8, v9

    move-object/from16 v22, v23

    goto/16 :goto_8

    :catch_b
    move-exception v13

    move-object/from16 v22, v23

    goto/16 :goto_6

    :catch_c
    move-exception v13

    move-object v8, v9

    move-object/from16 v22, v23

    goto/16 :goto_6

    :catch_d
    move-exception v14

    goto/16 :goto_1

    :catch_e
    move-exception v14

    move-object/from16 v22, v23

    goto/16 :goto_1
.end method

.method private checkReactivationLock()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    const-string v2, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method

.method private establishInitialState()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f10026e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ScrollView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f10027c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f100276

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f100277

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v18

    if-nez v18, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f100275

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f100270

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a06d7

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a06d8

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a06d9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a06da

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a06db

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a06dc

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a06d6

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v18, "ro.sec.fle.encryption"

    const-string v19, "false"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f100271

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a015a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    if-nez v9, :cond_7

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    const-string v18, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_2
    if-eqz v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "storage"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f100278

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v18, 0x7f0a06c9

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f100279

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v18, 0x7f0a06cb

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v15

    array-length v10, v15

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v10, :cond_3

    aget-object v18, v15, v8

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v16

    aget-object v18, v15, v8

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v16, :cond_9

    const-string v18, "sd"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    aget-object v18, v15, v8

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const-string v18, "ro.config.rm_preload_enabled"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->addDescriptionForRemovingPreloadApp()V

    :cond_5
    return-void

    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f100272

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f100273

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v34

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v29

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v24

    const-string v34, "layout_inflater"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/LayoutInflater;

    const/4 v9, 0x0

    const/16 v27, 0x0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v33

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    new-instance v32, Landroid/os/UserHandle;

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v8

    array-length v6, v8

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v9, v6

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v13, v1}, Lcom/android/settings/MasterClear;->newTitleView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v31

    const v34, 0x1020016

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v34

    if-eqz v34, :cond_3

    const v34, 0x7f0a05a4

    :goto_1
    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v0, v6, :cond_0

    aget-object v7, v8, v20

    const/4 v15, 0x0

    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    if-ge v0, v5, :cond_2

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    aget-object v35, v16, v23

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    aget-object v15, v16, v23

    :cond_2
    if-nez v15, :cond_5

    const-string v34, "MasterClear"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "No descriptor for account name="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " type="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_3
    const v34, 0x7f0a05a3

    goto :goto_1

    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    :cond_5
    const/16 v21, 0x0

    :try_start_0
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v34, v0

    if-eqz v34, :cond_6

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v32

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    :cond_6
    :goto_5
    const v34, 0x7f040112

    const/16 v35, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v21, :cond_7

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0d01f6

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v19

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :catch_0
    move-exception v17

    const-string v34, "MasterClear"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "No icon for account type "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    if-lez v9, :cond_9

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f100274

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v34

    sub-int v34, v34, v29

    if-lez v34, :cond_a

    const/16 v18, 0x1

    :goto_6
    if-eqz v18, :cond_b

    const/16 v34, 0x0

    :goto_7
    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    const/16 v18, 0x0

    goto :goto_6

    :cond_b
    const/16 v34, 0x8

    goto :goto_7
.end method

.method private newTitleView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p2, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0x3a

    :cond_0
    invoke-virtual {v0, p1, v3, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private runRestrictionsChallenge()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x38

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFinalConfirmation()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v1, 0x7f0a06c1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "can_erase_sd_on_fuse"

    iget-boolean v3, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, v4, v0}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v4, v0}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x3eb

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x38

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x3a

    if-eq p1, v1, :cond_2

    const/16 v1, 0x37

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-ne p2, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->checkReactivationLock()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "REMOTE_CONTROLS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p2, v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    :sswitch_2
    if-ne p2, v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_0
        0x3a -> :sswitch_2
        0x3eb -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f040114

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    :cond_2
    const v0, 0x7f040111

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->checkReactivationLock()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_my_mobile"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    const/16 v3, 0x37

    invoke-direct {p0, v3}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isFactoryResetAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-ne v0, v1, :cond_4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_my_mobile"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method
