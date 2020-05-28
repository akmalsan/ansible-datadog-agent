describe package('datadog-agent') do
    it { should be_installed }
end
describe command('dd-agent') do
    it { should exist }
end