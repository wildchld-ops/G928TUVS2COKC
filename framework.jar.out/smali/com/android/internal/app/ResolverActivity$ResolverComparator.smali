.class Lcom/android/internal/app/ResolverActivity$ResolverComparator;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolverComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mHttp:Z

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->mHttp:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPackageTimeSpent(Ljava/lang/String;)J
    .locals 4

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mStats:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mStats:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 16

    move-object/from16 v0, p1

    iget v9, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v12, -0x2

    if-eq v9, v12, :cond_0

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPkgNamesArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity;->access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPkgNamesArray:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/internal/app/ResolverActivity;->access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v5, v2

    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPkgNamesArray:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/internal/app/ResolverActivity;->access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v4, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, -0x1

    if-ne v5, v9, :cond_4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_6

    :cond_4
    if-le v5, v4, :cond_5

    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, -0x1

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->mHttp:Z

    if-eqz v9, :cond_8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v3

    move-object/from16 v0, p2

    iget v9, v0, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v6

    if-eq v3, v6, :cond_8

    if-eqz v3, :cond_7

    const/4 v9, -0x1

    goto :goto_0

    :cond_7
    const/4 v9, 0x1

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mStats:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_a

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->getPackageTimeSpent(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->getPackageTimeSpent(Ljava/lang/String;)J

    move-result-wide v14

    sub-long v10, v12, v14

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_a

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_9

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v9, -0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity;->access$2600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_b

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity;->access$2600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_c

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolverComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
