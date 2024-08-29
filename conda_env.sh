
# conda info --envs
# conda info |grep -i 'tslib'

# source ~/anacondas/etc/profile.d/conda.sh
#  在上面的命令中，将其替换~/anaconda3/为您的 miniconda / anaconda 安装路径。您可以通过运行以下命令找到该路径：conda info | grep -i 'base environment'

source /root/miniconda3/etc/profile.d/conda.sh
conda activate tslib
conda info --envs


# run
# bash conda_env.sh


# 例如，在 makefile 中您如何执行此操作，是否有一种简单的方法可以以编程方式获取路径conda.sh（例如从环境或文件的名称中获取environment.yml）

# 您的 bash 脚本中有一个源代码行必须明确引用您的 conda 安装路径，这使得它们不太易于移植。

#如果您使用类似的东西source $CONDA_PREFIX/etc/profile.d/conda.sh来解决这个问题，那么除了基础环境之外的所有环境都会出现脚本错误。您可以在脚本中注释它只能从基础环境运行，但同样：很乱。

# 是否存在一个 conda 变量，无论您当前的位置如何，它总是返回您的基本路径？